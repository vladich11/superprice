import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/extensions/build_context_ext.dart';
import 'package:superprice/features/shopping_list/data/shopping_list_repository.dart';
import 'package:superprice/features/shopping_list/domain/shopping_list_model.dart';

part 'home_screen.g.dart';

@riverpod
Future<List<ShoppingList>> baseLists(Ref ref) =>
    ref.watch(shoppingListRepositoryProvider).getLists(status: ListStatus.template);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final baseListsAsync = ref.watch(baseListsProvider);
    final green = const Color(0xFF2ECC71);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          _GreenHeader(green: green),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _NewListCard(green: green),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(context.l10n.baseListsTitle,
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(width: 4),
                      const Icon(Icons.list_alt, size: 16, color: Colors.black54),
                    ],
                  ),
                  const SizedBox(height: 12),
                  baseListsAsync.when(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (_, __) => const SizedBox(),
                    data: (lists) => lists.isEmpty
                        ? _EmptyBaseListCard(green: green)
                        : Column(
                            children: lists
                                .map((l) => _BaseListTile(list: l))
                                .toList(),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GreenHeader extends StatelessWidget {
  const _GreenHeader({required this.green});
  final Color green;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: green,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 24,
        bottom: 24,
        right: 20,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.greeting,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.tagline,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _NewListCard extends StatelessWidget {
  const _NewListCard({required this.green});
  final Color green;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.newListCardTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.newListCardSubtitle,
                    style: TextStyle(color: green, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () => context.push('/new-list'),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: green,
                child: const Icon(Icons.add, color: Colors.white, size: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyBaseListCard extends StatelessWidget {
  const _EmptyBaseListCard({required this.green});
  final Color green;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: green.withOpacity(0.1),
              child: Icon(Icons.list_alt_rounded, color: green, size: 28),
            ),
            const SizedBox(height: 16),
            Text(
              context.l10n.whatIsBaseList,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 6),
            Text(
              context.l10n.baseListExplanation,
              style: TextStyle(color: green, fontSize: 13),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push('/new-list'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(context.l10n.createFirstBaseList,
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BaseListTile extends StatelessWidget {
  const _BaseListTile({required this.list});
  final ShoppingList list;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(list.name,
            textAlign: TextAlign.right,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text('${list.items.length} ${context.l10n.items}',
            textAlign: TextAlign.right),
        leading: const Icon(Icons.chevron_left),
        trailing: const Icon(Icons.list_alt_outlined),
        onTap: () => context.push('/new-list', extra: list),
      ),
    );
  }
}
