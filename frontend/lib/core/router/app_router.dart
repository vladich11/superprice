import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:superprice/core/extensions/build_context_ext.dart';
import 'package:superprice/features/comparison/presentation/comparison_screen.dart';
import 'package:superprice/features/home/presentation/home_screen.dart';
import 'package:superprice/features/new_list/presentation/new_list_screen.dart';

const _green = Color(0xFF2ECC71);

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => _MainShell(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (_, __) => const HomeScreen(),
        ),
        GoRoute(
          path: '/map',
          builder: (_, __) => const _MapPlaceholder(),
        ),
        GoRoute(
          path: '/my-lists',
          builder: (_, __) => const _MyListsScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/new-list',
      builder: (_, __) => const NewListScreen(),
    ),
    GoRoute(
      path: '/comparison',
      builder: (_, __) => const ComparisonScreen(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(child: Text('Page not found: ${state.error}')),
  ),
);

class _MainShell extends StatefulWidget {
  const _MainShell({required this.child});
  final Widget child;

  @override
  State<_MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<_MainShell> {
  int _index = 1;

  void _onTap(int i, BuildContext context) {
    setState(() => _index = i);
    switch (i) {
      case 0:
        context.go('/map');
      case 1:
        context.go('/');
      case 2:
        context.go('/my-lists');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => _onTap(i, context),
        selectedItemColor: _green,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
            label: 'מפה',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.show_chart),
            activeIcon: const Icon(Icons.show_chart),
            label: context.l10n.priceComparisonsTab,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list_alt_outlined),
            activeIcon: const Icon(Icons.list_alt),
            label: context.l10n.myListsTab,
          ),
        ],
      ),
    );
  }
}

class _MapPlaceholder extends StatelessWidget {
  const _MapPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.map_outlined, size: 64, color: Colors.grey)),
    );
  }
}

class _MyListsScreen extends StatelessWidget {
  const _MyListsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.myListsTab),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Center(child: Text('הרשימות שלי — בקרוב')),
    );
  }
}

