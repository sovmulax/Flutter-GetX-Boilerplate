// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templax/src/exports.dart_exporter.dart';


class BackButton extends StatelessWidget {
  Color? color;
  EdgeInsetsGeometry? margin;
  BackButton({this.color, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? getMargin(left: 26, top: 10, bottom: 15),
      child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: color ?? ColorConstant.black900,
          )),
    );
  }
}
