import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superprice/core/extensions/build_context_ext.dart';
import 'package:superprice/features/cart/domain/cart_comparison_model.dart';
import 'package:superprice/features/comparison/presentation/comparison_view_model.dart';
import 'package:superprice/features/new_list/presentation/new_list_view_model.dart';

const _green = Color(0xFF2ECC71);

class ComparisonScreen extends ConsumerWidget {
  const ComparisonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(activeCartProvider);
    final compAsync = ref.watch(comparisonProvider);

    return Scaffold(
      body: compAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => _ErrorView(
          message: e.toString(),
          onRetry: () => ref.invalidate(comparisonProvider),
        ),
        data: (comparison) => _ComparisonContent(
          comparison: comparison,
          itemCount: cart.length,
        ),
      ),
    );
  }
}

class _ComparisonContent extends StatelessWidget {
  const _ComparisonContent({
    required this.comparison,
    required this.itemCount,
  });
  final CartComparison comparison;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final cheapestTotal = comparison.chains.isNotEmpty
        ? comparison.chains.first.total
        : 0.0;

    return Column(
      children: [
        _GreenHeader(itemCount: itemCount),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: comparison.chains.length,
            itemBuilder: (_, i) => _ChainCard(
              chain: comparison.chains[i],
              isCheapest: comparison.chains[i].chainId == comparison.cheapestChainId,
              cheapestTotal: cheapestTotal,
            ),
          ),
        ),
      ],
    );
  }
}

class _GreenHeader extends StatelessWidget {
  const _GreenHeader({required this.itemCount});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _green,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 16,
        bottom: 20,
        right: 20,
        left: 20,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                context.l10n.comparisonResultsTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    '$itemCount ${context.l10n.productsInCart}',
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.shopping_cart_outlined,
                      color: Colors.white70, size: 16),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChainCard extends StatelessWidget {
  const _ChainCard({
    required this.chain,
    required this.isCheapest,
    required this.cheapestTotal,
  });
  final ChainTotal chain;
  final bool isCheapest;
  final double cheapestTotal;

  @override
  Widget build(BuildContext context) {
    final diff = chain.total - cheapestTotal;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isCheapest
            ? const BorderSide(color: _green, width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  '₪${chain.total.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isCheapest ? _green : Colors.black87,
                  ),
                ),
                const Spacer(),
                if (isCheapest)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: _green.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      context.l10n.cheapestLabel,
                      style: const TextStyle(
                          color: _green, fontWeight: FontWeight.w600),
                    ),
                  )
                else
                  Text(
                    '+₪${diff.toStringAsFixed(2)}',
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                const SizedBox(width: 12),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFF0F0F0),
                  child: Icon(Icons.shopping_cart_outlined,
                      size: 18, color: Colors.black54),
                ),
                const SizedBox(width: 12),
                Text(
                  chain.chainName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {},
              child: Text(
                context.l10n.seeSavings,
                style: const TextStyle(
                    color: _green,
                    fontSize: 13,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.onRetry, this.message});
  final VoidCallback onRetry;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.red),
          const SizedBox(height: 12),
          Text(message ?? context.l10n.noMatchedItems, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            child: Text(context.l10n.retry),
          ),
        ],
      ),
    );
  }
}
