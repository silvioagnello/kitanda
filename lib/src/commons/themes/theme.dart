import "package:flutter/material.dart";

const primaryColor = Color(0xff8BC34A);
const accentColor = Colors.white;

ThemeData appTheme() => ThemeData(
      fontFamily: 'Lora',
      useMaterial3: true,
      brightness: Brightness.light,
      hintColor: const Color(0xff8c0009),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 33),
        centerTitle: true,
        surfaceTintColor: primaryColor,
        backgroundColor: primaryColor,
        foregroundColor: accentColor,
      ),
      scaffoldBackgroundColor: primaryColor,
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          textStyle: const TextStyle(fontSize: 18),
        ),
      ),
      colorScheme: MaterialTheme.lightScheme().toColorScheme(),
      textTheme: const TextTheme(
          // bodyLarge: TextStyle(fontSize: 50)
          // bodyMedium: TextStyle(fontSize: 50),
          // bodySmall: TextStyle(fontSize: 50),
          // displayLarge: TextStyle(fontSize: 50),
          // displaySmall: TextStyle(fontSize: 50),
          // headlineLarge: TextStyle(fontSize: 50),
          // headlineMedium: TextStyle(fontSize: 50),
          // labelLarge: TextStyle(fontSize: 50),
          //headlineSmall: TextStyle(fontSize: 50),
          // titleLarge: TextStyle(fontSize: 50),
          // titleSmall: TextStyle(fontSize: 50),
          ),
    );

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff4c662b),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8BC34A),
      onPrimaryContainer: Color(0xff102000),
      secondary: Color(0xff586249),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdce7c7),
      onSecondaryContainer: Color(0xff161e0b),
      tertiary: Color(0xff8f4a50),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdadb),
      onTertiaryContainer: Color(0xff3b0810),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1c16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff44483d),
      outline: Color(0xff75796c),
      outlineVariant: Color(0xffc5c8ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xfff1f2e6),
      inversePrimary: Color(0xffb2d189),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff354e15),
      secondaryFixed: Color(0xffdce7c7),
      onSecondaryFixed: Color(0xff161e0b),
      secondaryFixedDim: Color(0xffc0cbac),
      onSecondaryFixedVariant: Color(0xff404a33),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0810),
      tertiaryFixedDim: Color(0xffffb2b7),
      onTertiaryFixedVariant: Color(0xff723339),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff314a11),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff627d3f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c462f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6e785e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6d2f35),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa95f65),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1c16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff404439),
      outline: Color(0xff5d6155),
      outlineVariant: Color(0xff787c70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xfff1f2e6),
      inversePrimary: Color(0xffb2d189),
      primaryFixed: Color(0xff627d3f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4a6429),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6e785e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff555f47),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa95f65),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8c474d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff152700),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff314a11),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1c2511),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3c462f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff440f17),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6d2f35),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1c16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff21251c),
      outline: Color(0xff404439),
      outlineVariant: Color(0xff404439),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd7f7ac),
      primaryFixed: Color(0xff314a11),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1d3300),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3c462f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff27301b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d2f35),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff521920),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb2d189),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff203701),
      primaryContainer: Color(0xff354e15),
      onPrimaryContainer: Color(0xffcdeda3),
      secondary: Color(0xffc0cbac),
      onSecondary: Color(0xff2a331e),
      secondaryContainer: Color(0xff404a33),
      onSecondaryContainer: Color(0xffdce7c7),
      tertiary: Color(0xffffb2b7),
      onTertiary: Color(0xff561d24),
      tertiaryContainer: Color(0xff723339),
      onTertiaryContainer: Color(0xffffdadb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d8),
      surface: Color(0xff12140e),
      onSurface: Color(0xffe2e3d8),
      surfaceVariant: Color(0xff44483d),
      onSurfaceVariant: Color(0xffc5c8ba),
      outline: Color(0xff8f9285),
      outlineVariant: Color(0xff44483d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inverseOnSurface: Color(0xff2f312a),
      inversePrimary: Color(0xff4c662b),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff354e15),
      secondaryFixed: Color(0xffdce7c7),
      onSecondaryFixed: Color(0xff161e0b),
      secondaryFixedDim: Color(0xffc0cbac),
      onSecondaryFixedVariant: Color(0xff404a33),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff3b0810),
      tertiaryFixedDim: Color(0xffffb2b7),
      onTertiaryFixedVariant: Color(0xff723339),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb6d58d),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff0c1a00),
      primaryContainer: Color(0xff7d9a58),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc4cfb1),
      onSecondary: Color(0xff111906),
      secondaryContainer: Color(0xff8a9579),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb9bc),
      onTertiary: Color(0xff34030c),
      tertiaryContainer: Color(0xffca7a80),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d8),
      surface: Color(0xff12140e),
      onSurface: Color(0xfffbfcf0),
      surfaceVariant: Color(0xff44483d),
      onSurfaceVariant: Color(0xffc9ccbe),
      outline: Color(0xffa1a497),
      outlineVariant: Color(0xff818578),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inverseOnSurface: Color(0xff282b24),
      inversePrimary: Color(0xff364f16),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff091400),
      primaryFixedDim: Color(0xffb2d189),
      onPrimaryFixedVariant: Color(0xff253d05),
      secondaryFixed: Color(0xffdce7c7),
      onSecondaryFixed: Color(0xff0b1403),
      secondaryFixedDim: Color(0xffc0cbac),
      onSecondaryFixedVariant: Color(0xff303923),
      tertiaryFixed: Color(0xffffdadb),
      onTertiaryFixed: Color(0xff2c0007),
      tertiaryFixedDim: Color(0xffffb2b7),
      onTertiaryFixedVariant: Color(0xff5e2329),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff4ffdf),
      surfaceTint: Color(0xffb2d189),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb6d58d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff4ffdf),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc4cfb1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb9bc),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d8),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff44483d),
      onSurfaceVariant: Color(0xfff9fced),
      outline: Color(0xffc9ccbe),
      outlineVariant: Color(0xffc9ccbe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff1b3000),
      primaryFixed: Color(0xffd2f1a7),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb6d58d),
      onPrimaryFixedVariant: Color(0xff0c1a00),
      secondaryFixed: Color(0xffe0ebcc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc4cfb1),
      onSecondaryFixedVariant: Color(0xff111906),
      tertiaryFixed: Color(0xffffdfe0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb9bc),
      onTertiaryFixedVariant: Color(0xff34030c),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0d0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      surfaceTintColor: MaterialTheme.lightScheme().primaryContainer,
      backgroundColor: MaterialTheme.lightScheme().primaryContainer,
    ),
    scaffoldBackgroundColor: const Color(0xff8BC34A),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: const TextStyle(fontSize: 18),
      ),
    ),
    colorScheme: MaterialTheme.lightScheme().toColorScheme(),
    // textTheme: textTheme.apply(
    //     //bodyColor: colorScheme.onSurface,
    //     //displayColor: colorScheme.onSurface,
    //     ),
    // scaffoldBackgroundColor: colorScheme.surface,
    // canvasColor: colorScheme.surface,
  );

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

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
