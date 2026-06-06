import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  Locale build() => const Locale('he');

  void toggle() {
    state = state.languageCode == 'he' ? const Locale('en') : const Locale('he');
  }
}
