import 'package:flutter/material.dart';

import 'styles.dart';

final ThemeData theme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildPrimaryTextTheme(base.primaryTextTheme),
    primaryColorBrightness: Brightness.light,
    primaryColor: colorPrimary,
    scaffoldBackgroundColor: bgColorBase,
    canvasColor: bgColorCanvas,
    buttonColor: colorPrimary,
    disabledColor: bgColorDisabled,
    dividerColor: borderColor,
    errorColor: colorError,
    hintColor: fontColorLight,
    appBarTheme: _buildAppBarTheme(base.appBarTheme),
    buttonTheme: _buildButtonTheme(base.buttonTheme),
    chipTheme: _buildChipTheme(base.chipTheme),
    iconTheme: _buildIconThemeData(base.iconTheme),
    tabBarTheme: _buildTabBarThemeData(base.tabBarTheme),
  );
}

AppBarTheme _buildAppBarTheme(AppBarTheme base) => base.copyWith(
      elevation: headerBarElevation,
      color: headerBarColor,
      brightness: headerBarBrightness,
      iconTheme: headerBarIconTheme,
      textTheme: headerBarTextTheme,
    );

TextTheme _buildTextTheme(TextTheme base) => base
    .apply(
      fontFamily: fontFamilyPrimary,
      bodyColor: fontColorPrimary,
      displayColor: fontColorPrimary,
    )
    .copyWith(
      body1: base.body1.copyWith(
        fontFamily: fontFamilyPrimary,
        fontSize: fontSizePrimary,
        color: fontColorPrimary,
      ),
      button: base.button.copyWith(
        color: fontColorOnDark,
        fontFamily: fontFamilyPrimary,
        fontSize: fontSizePrimary,
        fontWeight: FontWeight.bold,
      ),
    );

TextTheme _buildPrimaryTextTheme(TextTheme base) => base
    .copyWith(
      title: headerBarTitleStyle,
    )
    .apply(
      fontFamily: fontFamilyPrimary,
    );

ButtonThemeData _buildButtonTheme(ButtonThemeData base) => base.copyWith(
      shape: buttonShape,
      padding: buttonPadding,
      buttonColor: colorPrimary,
      disabledColor: buttonDisabledColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );

ChipThemeData _buildChipTheme(ChipThemeData base) => base.copyWith(
      labelStyle: textOnDark,
      backgroundColor: colorPrimary,
    );

IconThemeData _buildIconThemeData(IconThemeData base) => base.copyWith(
      size: iconSizeLarge,
    );

TabBarTheme _buildTabBarThemeData(TabBarTheme base) => base.copyWith(
    indicator: _tabBarIndicator,
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: colorPrimary,
    labelStyle: textPrimary.copyWith(
      fontWeight: fontWeightBold,
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: paddingPrimary),
    unselectedLabelColor: fontColorSecondary,
    unselectedLabelStyle: textPrimary.copyWith(
      color: fontColorSecondary,
      fontWeight: fontWeightBold,
    ));

Decoration get _tabBarIndicator {
  return UnderlineTabIndicator(
    borderSide: BorderSide(
      color: colorPrimary,
      width: 2,
    ),
  );
}
