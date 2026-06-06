import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/core/env/env.dart';
import 'package:superprice/core/network/api_exception.dart';

part 'api_client.g.dart';

String get _backendUrl =>
    kIsWeb ? 'http://localhost:8000' : Env.backendUrl;

@riverpod
Dio apiClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer ${Env.apiKey}';
        handler.next(options);
      },
      onError: (error, handler) {
        handler.reject(error);
      },
    ),
  );

  return dio;
}

@riverpod
Dio backendClient(Ref ref) {
  return Dio(
    BaseOptions(
      baseUrl: _backendUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {'Content-Type': 'application/json'},
    ),
  );
}

AppException mapDioException(DioException e) => switch (e.type) {
      DioExceptionType.connectionError ||
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        NetworkException('${e.type.name}: ${e.error ?? e.message ?? 'unknown'}'),
      DioExceptionType.badResponse => switch (e.response?.statusCode ?? 0) {
          401 => const UnauthorizedException(),
          404 => const NotFoundException(),
          >= 500 => const ServerException(),
          _ => UnknownException(e.message ?? ''),
        },
      _ => UnknownException(e.message ?? ''),
    };
