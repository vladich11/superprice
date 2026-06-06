import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superprice/core/env/env.dart';
import 'package:superprice/core/network/api_endpoints.dart';

const _green = Color(0xFF2ECC71);

final healthChecksProvider =
    FutureProvider.autoDispose<List<Map<String, dynamic>>>((ref) async {
  final dio = Dio(
    BaseOptions(
      baseUrl: kIsWeb ? 'http://localhost:8000' : Env.backendUrl,
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
      sendTimeout: const Duration(seconds: 40),
    ),
  );
  final r = await dio.get(ApiEndpoint.backendHealthChecks.path());
  final checks = (r.data['checks'] as List).cast<Map<String, dynamic>>();
  return checks;
});

class HealthScreen extends ConsumerWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(healthChecksProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('בדיקות תקינות API'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(healthChecksProvider),
          ),
        ],
      ),
      body: async.when(
        loading: () => const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('בודק נקודות קצה... (עד דקה)'),
            ],
          ),
        ),
        error: (e, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 48),
                const SizedBox(height: 12),
                Text(e.toString(), textAlign: TextAlign.center),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.invalidate(healthChecksProvider),
                  child: const Text('נסה שוב'),
                ),
              ],
            ),
          ),
        ),
        data: (checks) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(healthChecksProvider),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _Summary(checks: checks),
              const SizedBox(height: 12),
              ...checks.map((c) => _CheckCard(check: c)),
            ],
          ),
        ),
      ),
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary({required this.checks});
  final List<Map<String, dynamic>> checks;

  @override
  Widget build(BuildContext context) {
    final ok = checks.where((c) => c['ok'] == true).length;
    final total = checks.length;
    final allGood = ok == total;
    return Card(
      color: allGood ? _green.withValues(alpha: 0.1) : Colors.orange.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              allGood ? Icons.check_circle : Icons.warning_amber_rounded,
              color: allGood ? _green : Colors.orange,
              size: 32,
            ),
            const SizedBox(width: 12),
            Text(
              '$ok / $total נקודות קצה תקינות',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckCard extends StatelessWidget {
  const _CheckCard({required this.check});
  final Map<String, dynamic> check;

  @override
  Widget build(BuildContext context) {
    final ok = check['ok'] == true;
    final status = check['status'];
    final latency = check['latencyMs'];
    final slow = latency is num && latency > 5000;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  ok ? Icons.check_circle : Icons.cancel,
                  color: ok ? _green : Colors.red,
                  size: 22,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    check['name']?.toString() ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                _Pill(
                  text: 'HTTP $status',
                  color: ok ? _green : Colors.red,
                ),
                const SizedBox(width: 6),
                _Pill(
                  text: '${latency}ms',
                  color: slow ? Colors.orange : Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              check['path']?.toString() ?? '',
              style: const TextStyle(
                  fontFamily: 'monospace', fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 6),
            Text(
              check['summary']?.toString() ?? '',
              style: TextStyle(
                fontSize: 12,
                color: ok ? Colors.black87 : Colors.red.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: color, fontSize: 11, fontWeight: FontWeight.w600),
      ),
    );
  }
}
