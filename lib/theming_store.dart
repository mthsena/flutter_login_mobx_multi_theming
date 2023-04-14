import 'package:mobx/mobx.dart';

enum ThemeOption {
  light,
  dark;

  bool get isLight => this == ThemeOption.light;
  bool get isDark => this == ThemeOption.dark;
}

class ThemingStore {
  ThemingStore() {
    changeTheme = Action(_changeTheme);
  }

  final currentTheme = Observable(ThemeOption.light);

  late final Action changeTheme;

  void _changeTheme(ThemeOption option) async {
    currentTheme.value = option;
  }
}
