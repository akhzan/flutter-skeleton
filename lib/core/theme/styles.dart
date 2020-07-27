import 'package:flutter/material.dart';

/// COMMON STYLES
///
/// Styles that are commonly used throughout the app.

/* COLORS */

// Shades of Grays
const Color _colorGray_333333 = Color(0xFF333333);
const Color _colorGray_4b4b4b = Color(0xFF4b4b4b);
const Color _colorGray_757575 = Color(0xFF757575);
const Color _colorGray_adadad = Color(0xFFadadad);
const Color _colorGray_c9c9c9 = Color(0xFFc9c9c9);
const Color _colorGray_e0e0e0 = Color(0xFFe0e0e0);
const Color _colorGray_f2f4f5 = Color(0xFFf2f4f5);

// Main Colors
const Color _colorPurple = Color(0xFF6a56eb);

// Additional Colors
const Color _colorRed = Color(0xFFba1818);
const Color _colorRedLight = Color(0xFFdb5555);
const Color _colorYellow = Color(0xFFffb100);
const Color _colorBeige = Color(0xFFfef6d9);
const Color _colorYellowLight = Color(0xFFffea6b);
const Color _colorPayfazzGreen = Color(0xFF18BA62);

/// IMPORTANT!
/// The colors above should never be used outside styles.dart directly. Rather,
/// it should be assigned to a variable that relates to its application
/// (eg. bgColor, borderColor, buttonColor).

/// Basic Color Applications

// Brand Colors
const Color colorPrimary = _colorPurple;
const Color colorBlack = _colorGray_333333;

// Indicator Colors
const Color colorError = _colorRed;
const Color colorDisabled = _colorGray_c9c9c9;
const Color colorInactive = _colorGray_f2f4f5;
const Color colorSuccess = _colorPayfazzGreen;
const Color colorFailed = _colorGray_757575;
const Color colorPending = _colorYellow;
const Color colorNotification = _colorRedLight;
const Color colorNotificationVariant = _colorBeige;

// Color Modifiers
const int colorAlpha = 0x8a;

/* BRAND ICONS */

/* FONTS */

const String fontFamilyPrimary = 'FazzNeue';

/// Font Colors

const Color fontColorPrimary = _colorGray_4b4b4b;
const Color fontColorSecondary = _colorGray_757575;
const Color fontColorLight = _colorGray_e0e0e0;
const Color fontColorBlack = colorBlack;
const Color fontColorOnDark = Colors.white;
const Color fontColorPayfazzGreen = _colorPayfazzGreen;

/// Font Sizes

const double fontSizePrimary = 14.0;
const double fontSizeHeading = 16.0;
const double fontSizeHeadingBig = 20.0;
const double fontSizeSmall = 12.0;
const double fontSizeSmallest = 10.0;

const FontWeight fontWeightBold = FontWeight.w700;
const FontWeight fontWeightMedium = FontWeight.w500;

// Paragraph Line Height
const double textParagraphHeight = 1.15;

/* MEASUREMENTS */

/// Media Query
const double screenWidthDefault = 360;

/// Paddings/Margins

const double paddingPrimary = 16.0;
const double paddingSecondary = 20.0;
const double paddingSmall = 8.0;
const double paddingVariant1 = 14.0;
const double paddingVariant2 = 12.0;

// Padding between stacking texts
const double paddingText = 4.0;

/* BASIC APPEARANCES */

/// Text Styles

const TextStyle textPrimary = TextStyle(
  color: fontColorPrimary,
  fontSize: fontSizePrimary,
  fontFamily: fontFamilyPrimary,
);

const TextStyle textSecondary = TextStyle(color: fontColorSecondary);

const TextStyle textOnDark = TextStyle(color: fontColorOnDark);

const TextStyle textSmall = TextStyle(fontSize: fontSizeSmall);

const TextStyle textBold = TextStyle(fontWeight: fontWeightBold);

const TextStyle textHeading = TextStyle(fontSize: fontSizeHeading);

TextStyle textHeadingBold = textHeading.copyWith(
  fontWeight: fontWeightBold,
);

const TextStyle textHeadingBig = TextStyle(
  fontSize: fontSizeHeadingBig,
);

TextStyle textHeadingBigBold = textHeadingBig.copyWith(
  fontWeight: fontWeightBold,
);

const TextStyle textNote = TextStyle(
  color: fontColorSecondary,
  fontSize: fontSizeSmall,
);

const TextStyle textNoteSmall = TextStyle(
  color: fontColorSecondary,
  fontSize: fontSizeSmallest,
);

// Text highlight
const TextStyle textHilite = TextStyle(color: colorPrimary);

// Text bigger highlite
const TextStyle textExtraHilite = TextStyle(
  color: colorPrimary,
  fontWeight: FontWeight.bold,
  fontSize: fontSizeHeading,
);

// Text hyperlink
const TextStyle textLink = TextStyle(
  color: colorPrimary,
  fontWeight: fontWeightBold,
);

// Text indicating negative event
const TextStyle textError = TextStyle(color: colorError);

/// Backgrounds

const Color bgColorBase = _colorGray_f2f4f5;
const Color bgColorCanvas = Colors.white;
const Color bgColorDisabled = colorDisabled;

const Color bgColorNotification = _colorYellowLight;

/// Borders

// Border Radius
const double borderRadiusSize = 4.0;
const double borderRadiusSizeLarge = 8.0;

BorderRadius borderRadiusPrimary = BorderRadius.circular(borderRadiusSize);
BorderRadius borderRadiusLarge = BorderRadius.circular(borderRadiusSizeLarge);

// Border Colors
const Color borderColor = _colorGray_e0e0e0;
const Color borderColorDark = _colorGray_adadad;
const Color borderColorOnDark = Colors.white;

// Border Sides
const BorderSide borderSide = BorderSide(
  color: borderColor,
);

// Border - All Sides
Border borders = Border.all(
  color: borderSide.color,
);

// Container Decorations
BoxDecoration decorationBordered = BoxDecoration(
  border: borders,
  borderRadius: borderRadiusPrimary,
);
BoxDecoration decorationBorderedVariant = decorationBordered.copyWith(
  borderRadius: borderRadiusLarge,
);

/// Shadows

const double shadowElevation = 2;

const Color shadowColor = Color.fromRGBO(0, 0, 0, .15);
const double shadowBlurRadius = 2;

// Default shadows
const BoxShadow shadow = BoxShadow(
  color: shadowColor,
  offset: Offset(0, 3),
  blurRadius: shadowBlurRadius,
);
const List<BoxShadow> shadows = <BoxShadow>[
  shadow,
];

// Reversed shadows
const BoxShadow shadowAbove = BoxShadow(
  color: shadowColor,
  offset: Offset(0, -3),
  blurRadius: shadowBlurRadius,
);
const List<BoxShadow> shadowsAbove = <BoxShadow>[
  shadowAbove,
];

/// WIDGET STYLES
///
/// Default styles that are only used on specific widgets.

/// Icon

const double iconSize = 24;
const double iconSizeLarge = 32;
const double iconSizeSmall = 20;

// Minimum size for tappable objects
const double iconTappableSize = 48;

const Color iconColorPrimary = colorBlack;
const Color iconColorSecondary = _colorGray_adadad;
const Color iconColorOnDark = Colors.white;
const Color iconColorHilite = colorPrimary;

/// Header Bar

// The height of the main section of the [HeaderBar]
const double headerBarHeight = 64;
const double headerBarHeightVariant = 76;

const TextStyle headerBarTitleStyle = TextStyle(
  color: fontColorBlack,
  fontFamily: fontFamilyPrimary,
  fontSize: fontSizeHeading,
  fontWeight: fontWeightBold,
);

const double headerBarIconMargin = paddingPrimary;

// The default maximum size for the icons in the header bar
const double headerBarIconSize = iconSize + (headerBarIconMargin * 2);

const double headerBarTitleMargin = paddingPrimary;
const double headerBarElevation = shadowElevation;
const Color headerBarColor = bgColorCanvas;
const Brightness headerBarBrightness = Brightness.light;
const IconThemeData headerBarIconTheme = IconThemeData(
  color: iconColorPrimary,
  size: iconSize,
);
const TextTheme headerBarTextTheme = TextTheme(
  title: headerBarTitleStyle,
);

/// Tab Bar

const double tabBarHeight = 42;

/// Button

const EdgeInsets buttonPadding = EdgeInsets.symmetric(
  horizontal: paddingPrimary,
  vertical: paddingVariant1,
);

const double buttonRadiusSize = 100;

BorderRadius buttonRadius = BorderRadius.circular(buttonRadiusSize);

ShapeBorder buttonShape = RoundedRectangleBorder(
  borderRadius: buttonRadius,
);

const Color buttonDisabledColor = bgColorDisabled;
const Color buttonDisabledTextColor = fontColorOnDark;

/// Button: Filter

const Color buttonFilterBorderColor = _colorGray_757575;
const Color buttonFilterFontColor = fontColorPrimary;

/// Input Fields

const Color inputfieldUnderlineColor = _colorGray_757575;

/// Shimmer

const Color shimmerColor = _colorGray_e0e0e0;
const Color shimmerColorShine = _colorGray_f2f4f5;
