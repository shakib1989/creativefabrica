import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseThemeText {
  final Color Function(BuildContext) getColor;

  BaseThemeText({required this.getColor});

  Text displayLarge({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.displayLarge;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text displayMedium({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.displayMedium;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text displaySmall({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.displaySmall;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text headlineLarge({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.headlineLarge;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text headlineMedium({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.headlineMedium;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text headlineSmall({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.headlineSmall;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text titleLarge({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.titleLarge;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text titleMedium({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.titleMedium;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text titleSmall({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.titleSmall;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text labelLarge({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.labelLarge;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text labelMedium({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.labelMedium;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text labelSmall({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.labelSmall;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
        fontWeight: fontWeight,
        color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text bodyLarge({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.bodyLarge;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

  Text bodyMedium({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.bodyMedium;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }


  Text bodySmall({
    required BuildContext context,
    required String text,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    FontWeight? fontWeight,
  }) {
    TextStyle? style = Theme.of(context).textTheme.bodySmall;
    final color = getColor(context);
    if (fontWeight != null) {
      style = style?.copyWith(
          fontWeight: fontWeight,
          color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily
      );
    } else {
      style = style?.copyWith(color: color,
          fontFamily: GoogleFonts.urbanist().fontFamily);
    }

    return Text(
      text,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      style: style,
    );
  }

}
