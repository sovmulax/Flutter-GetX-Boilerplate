import 'package:templax/src/exports.dart_exporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

//ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(42),
        toggleSize: 18,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.indigoA100,
        activeToggleColor: ColorConstant.blue50,
        inactiveColor: ColorConstant.gray200,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
