import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:superprice/core/extensions/build_context_ext.dart';
import 'package:superprice/features/new_list/presentation/new_list_view_model.dart';
import 'package:superprice/features/products/data/products_repository.dart';

const _popularProducts = [
  'חלב', 'לחם', 'ביצים', 'חומוס', 'טחינה', 'יוגורט',
  'גבינה צהובה', 'עגבניות', 'גבינת קוטג\'', 'ממרח שוקולד',
];

const _green = Color(0xFF2ECC71);

class NewListScreen extends ConsumerStatefulWidget {
  const NewListScreen({super.key});

  @override
  ConsumerState<NewListScreen> createState() => _NewListScreenState();
}

class _NewListScreenState extends ConsumerState<NewListScreen> {
  final _searchController = TextEditingController();
  String _query = '';
  Timer? _debounce;

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _addPopularProduct(String name) async {
    final repo = ref.read(productsRepositoryProvider);
    final page = await repo.searchProducts(name, limit: 1);
    if (page.items.isNotEmpty) {
      final p = page.items.first;
      ref.read(activeCartProvider.notifier).toggle(
            SelectedProduct(barcode: p.productBarcode, name: p.productName),
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(p.productName),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(context.l10n.productNotFoundShort),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = ref.watch(activeCartProvider);
    final searchResults = ref.watch(productSearchProvider(_query));

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          context.l10n.createShoppingList,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          _SearchBar(
            controller: _searchController,
            onChanged: (q) {
          _debounce?.cancel();
          _debounce = Timer(const Duration(milliseconds: 400), () {
            setState(() => _query = q);
          });
        },
          ),
          Expanded(
            child: _query.length >= 2
                ? _SearchResults(
                    results: searchResults,
                    cart: cart,
                    onToggle: (p) =>
                        ref.read(activeCartProvider.notifier).toggle(p),
                  )
                : _DefaultContent(
                    cart: cart,
                    onPopularTap: _addPopularProduct,
                  ),
          ),
          _BottomBar(cart: cart),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({required this.controller, required this.onChanged});
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: context.l10n.addProductHint,
          hintTextDirection: TextDirection.rtl,
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _DefaultContent extends StatelessWidget {
  const _DefaultContent({required this.cart, required this.onPopularTap});
  final List<SelectedProduct> cart;
  final Future<void> Function(String) onPopularTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.popularProductsTitle,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const Icon(Icons.keyboard_arrow_up, color: Colors.black54),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.start,
            children: _popularProducts
                .map((name) => _PopularChip(
                      name: name,
                      onTap: () => onPopularTap(name),
                    ))
                .toList(),
          ),
          if (cart.isNotEmpty) ...[
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 8),
            ...cart.map(
              (p) => ListTile(
                title: Text(p.name, textAlign: TextAlign.right),
                trailing: const Icon(Icons.check_circle, color: _green),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _PopularChip extends StatelessWidget {
  const _PopularChip({required this.name, required this.onTap});
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(name),
      onPressed: onTap,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
    );
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults({
    required this.results,
    required this.cart,
    required this.onToggle,
  });
  final AsyncValue<List<SelectedProduct>> results;
  final List<SelectedProduct> cart;
  final void Function(SelectedProduct) onToggle;

  @override
  Widget build(BuildContext context) {
    return results.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text(e.toString())),
      data: (items) => items.isEmpty
          ? Center(child: Text(context.l10n.noResults))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (_, i) {
                final p = items[i];
                final inCart = cart.any((c) => c.barcode == p.barcode);
                return ListTile(
                  title: Text(p.name, textAlign: TextAlign.right),
                  trailing: inCart
                      ? const Icon(Icons.check_circle, color: _green)
                      : const Icon(Icons.add_circle_outline),
                  onTap: () => onToggle(p),
                );
              },
            ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.cart});
  final List<SelectedProduct> cart;

  @override
  Widget build(BuildContext context) {
    final hasItems = cart.isNotEmpty;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: hasItems ? () => context.push('/comparison') : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: _green,
              disabledBackgroundColor: Colors.grey.shade300,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(
              '${context.l10n.continueToCompare} (${cart.length} ${context.l10n.items})',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
