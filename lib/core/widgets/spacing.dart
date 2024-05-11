import 'package:flutter/material.dart';
import 'package:templax/src/exports.dart_exporter.dart';

// ignore: must_be_immutable
class HorizontalSpace extends StatelessWidget {
  double width;
  HorizontalSpace({required this.width});

  @override
  Widget build(BuildContext context) {
//bool isDark =Theme.of(context).brightness==Brightness.dark;

    return SizedBox(
      width: getHorizontalSize(width),
    );
  }
}

// ignore: must_be_immutable
class VerticalSpace extends StatelessWidget {
  double height;
  VerticalSpace({required this.height});

  @override
  Widget build(BuildContext context) {
//bool isDark =Theme.of(context).brightness==Brightness.dark;

    return SizedBox(
      height: getVerticalSize(height),
    );
  }
}

//ignore: must_be_immutable
class CustomDivider extends StatelessWidget {
  CustomDivider(
      {Key? key,
      this.bottomPadding = 0,
      this.topPadding = 0,
      this.height,
      this.width})
      : super(key: key);

  double topPadding;
  double bottomPadding;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
// bool isDark =Theme.of(context).brightness==Brightness.dark;

    return Container(
      height: height ?? 1,
      width: width ?? size.width,
      margin: getMargin(top: topPadding, bottom: bottomPadding),
      color: const Color(0xffefefef),
    );
  }
}
