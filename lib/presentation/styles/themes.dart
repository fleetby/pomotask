import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

const appThemeMode = ThemeMode.light;

ThemeData get appTheme {
  const surfaceContainerLow = Color(0xfffcfdff);
  const primary = Color(0xff6d7cff);
  const error = Color(0xffff5b74);
  return ThemeData(
    cardTheme: const CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: error),
      ),
    ),
    iconTheme: const IconThemeData(fill: 1),
    navigationBarTheme: NavigationBarThemeData(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      backgroundColor: surfaceContainerLow,
      indicatorColor: Colors.transparent,
      iconTheme: _NavigationBarThemeIconTheme(primary: primary),
    ),
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) =>
          const Icon(Symbols.arrow_back_rounded),
    ),
    colorScheme: const ColorScheme.light(
      surface: Color(0xfff2f6fd),
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainerLowest: Colors.white,
      onSurface: Color(0xff384b6f),
      primary: primary,
      // ignore: avoid_redundant_argument_values
      onPrimary: Colors.white,
      primaryContainer: Color(0xffdee4fd),
      onPrimaryContainer: Color(0xff6d7cff),
      error: error,
      errorContainer: Color(0xffff91a2),
    ),
  );
}

class _NavigationBarThemeIconTheme extends WidgetStateProperty<IconThemeData> {
  _NavigationBarThemeIconTheme({required this.primary});

  final Color primary;

  @override
  IconThemeData resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.selected)) {
      return IconThemeData(color: primary, fill: 1);
    } else {
      return const IconThemeData(color: Color(0xff96989d), fill: 1);
    }
  }
}
