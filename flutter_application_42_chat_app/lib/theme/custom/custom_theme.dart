import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff725188),
      surfaceTint: Color(0xff725188),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff3daff),
      onPrimaryContainer: Color(0xff2b0c40),
      secondary: Color(0xff675a6e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffefdcf5),
      onSecondaryContainer: Color(0xff221729),
      tertiary: Color(0xff815154),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdada),
      onTertiaryContainer: Color(0xff331014),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff1e1a20),
      onSurfaceVariant: Color(0xff4b454d),
      outline: Color(0xff7c747e),
      outlineVariant: Color(0xffcdc3ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f35),
      inversePrimary: Color(0xffdfb8f6),
      primaryFixed: Color(0xfff3daff),
      onPrimaryFixed: Color(0xff2b0c40),
      primaryFixedDim: Color(0xffdfb8f6),
      onPrimaryFixedVariant: Color(0xff593a6e),
      secondaryFixed: Color(0xffefdcf5),
      onSecondaryFixed: Color(0xff221729),
      secondaryFixedDim: Color(0xffd2c1d9),
      onSecondaryFixedVariant: Color(0xff4f4256),
      tertiaryFixed: Color(0xffffdada),
      onTertiaryFixed: Color(0xff331014),
      tertiaryFixedDim: Color(0xfff4b7ba),
      onTertiaryFixedVariant: Color(0xff663b3d),
      surfaceDim: Color(0xffe0d7df),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf1f9),
      surfaceContainer: Color(0xfff4ebf3),
      surfaceContainerHigh: Color(0xffeee6ed),
      surfaceContainerHighest: Color(0xffe9e0e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff55366a),
      surfaceTint: Color(0xff725188),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8967a0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b3e52),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7e6f85),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff61373a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9a676a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff1e1a20),
      onSurfaceVariant: Color(0xff474149),
      outline: Color(0xff645d66),
      outlineVariant: Color(0xff807882),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f35),
      inversePrimary: Color(0xffdfb8f6),
      primaryFixed: Color(0xff8967a0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6f4f85),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7e6f85),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff65576c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9a676a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7e4f52),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe0d7df),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf1f9),
      surfaceContainer: Color(0xfff4ebf3),
      surfaceContainerHigh: Color(0xffeee6ed),
      surfaceContainerHighest: Color(0xffe9e0e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff321447),
      surfaceTint: Color(0xff725188),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff55366a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff291e30),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4b3e52),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3b171a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff61373a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7fd),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff27222a),
      outline: Color(0xff474149),
      outlineVariant: Color(0xff474149),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff332f35),
      inversePrimary: Color(0xfff9e6ff),
      primaryFixed: Color(0xff55366a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3d1f52),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4b3e52),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff34283b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff61373a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff472124),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe0d7df),
      surfaceBright: Color(0xfffff7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf1f9),
      surfaceContainer: Color(0xfff4ebf3),
      surfaceContainerHigh: Color(0xffeee6ed),
      surfaceContainerHighest: Color(0xffe9e0e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdfb8f6),
      surfaceTint: Color(0xffdfb8f6),
      onPrimary: Color(0xff412356),
      primaryContainer: Color(0xff593a6e),
      onPrimaryContainer: Color(0xfff3daff),
      secondary: Color(0xffd2c1d9),
      onSecondary: Color(0xff382c3e),
      secondaryContainer: Color(0xff4f4256),
      onSecondaryContainer: Color(0xffefdcf5),
      tertiary: Color(0xfff4b7ba),
      onTertiary: Color(0xff4c2528),
      tertiaryContainer: Color(0xff663b3d),
      onTertiaryContainer: Color(0xffffdada),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff161217),
      onSurface: Color(0xffe9e0e8),
      onSurfaceVariant: Color(0xffcdc3ce),
      outline: Color(0xff968e98),
      outlineVariant: Color(0xff4b454d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe9e0e8),
      inversePrimary: Color(0xff725188),
      primaryFixed: Color(0xfff3daff),
      onPrimaryFixed: Color(0xff2b0c40),
      primaryFixedDim: Color(0xffdfb8f6),
      onPrimaryFixedVariant: Color(0xff593a6e),
      secondaryFixed: Color(0xffefdcf5),
      onSecondaryFixed: Color(0xff221729),
      secondaryFixedDim: Color(0xffd2c1d9),
      onSecondaryFixedVariant: Color(0xff4f4256),
      tertiaryFixed: Color(0xffffdada),
      onTertiaryFixed: Color(0xff331014),
      tertiaryFixedDim: Color(0xfff4b7ba),
      onTertiaryFixedVariant: Color(0xff663b3d),
      surfaceDim: Color(0xff161217),
      surfaceBright: Color(0xff3c383e),
      surfaceContainerLowest: Color(0xff100d12),
      surfaceContainerLow: Color(0xff1e1a20),
      surfaceContainer: Color(0xff221e24),
      surfaceContainerHigh: Color(0xff2d292e),
      surfaceContainerHighest: Color(0xff383339),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe3bcfb),
      surfaceTint: Color(0xffdfb8f6),
      onPrimary: Color(0xff25053a),
      primaryContainer: Color(0xffa783be),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd6c5dd),
      onSecondary: Color(0xff1c1223),
      secondaryContainer: Color(0xff9b8ba2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff9bbbe),
      onTertiary: Color(0xff2c0b0f),
      tertiaryContainer: Color(0xffb98385),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff161217),
      onSurface: Color(0xfffff9fb),
      onSurfaceVariant: Color(0xffd2c8d2),
      outline: Color(0xffa9a0aa),
      outlineVariant: Color(0xff89808a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe9e0e8),
      inversePrimary: Color(0xff5a3b70),
      primaryFixed: Color(0xfff3daff),
      onPrimaryFixed: Color(0xff1f0135),
      primaryFixedDim: Color(0xffdfb8f6),
      onPrimaryFixedVariant: Color(0xff47295c),
      secondaryFixed: Color(0xffefdcf5),
      onSecondaryFixed: Color(0xff170d1e),
      secondaryFixedDim: Color(0xffd2c1d9),
      onSecondaryFixedVariant: Color(0xff3e3244),
      tertiaryFixed: Color(0xffffdada),
      onTertiaryFixed: Color(0xff25060a),
      tertiaryFixedDim: Color(0xfff4b7ba),
      onTertiaryFixedVariant: Color(0xff532a2d),
      surfaceDim: Color(0xff161217),
      surfaceBright: Color(0xff3c383e),
      surfaceContainerLowest: Color(0xff100d12),
      surfaceContainerLow: Color(0xff1e1a20),
      surfaceContainer: Color(0xff221e24),
      surfaceContainerHigh: Color(0xff2d292e),
      surfaceContainerHighest: Color(0xff383339),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fb),
      surfaceTint: Color(0xffdfb8f6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe3bcfb),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9fb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd6c5dd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff9bbbe),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff161217),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9fb),
      outline: Color(0xffd2c8d2),
      outlineVariant: Color(0xffd2c8d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe9e0e8),
      inversePrimary: Color(0xff3a1c4f),
      primaryFixed: Color(0xfff6dfff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe3bcfb),
      onPrimaryFixedVariant: Color(0xff25053a),
      secondaryFixed: Color(0xfff3e1fa),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd6c5dd),
      onSecondaryFixedVariant: Color(0xff1c1223),
      tertiaryFixed: Color(0xffffdfe0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff9bbbe),
      onTertiaryFixedVariant: Color(0xff2c0b0f),
      surfaceDim: Color(0xff161217),
      surfaceBright: Color(0xff3c383e),
      surfaceContainerLowest: Color(0xff100d12),
      surfaceContainerLow: Color(0xff1e1a20),
      surfaceContainer: Color(0xff221e24),
      surfaceContainerHigh: Color(0xff2d292e),
      surfaceContainerHighest: Color(0xff383339),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
