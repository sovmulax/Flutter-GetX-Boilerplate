import 'package:templax/src/exports.dart_exporter.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillBlue100:
        return ColorConstant.blue100;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillBlue50:
        return ColorConstant.blue50;
      case IconButtonVariant.FillLightgreen400:
        return ColorConstant.lightGreen400;
      case IconButtonVariant.FillOrange50:
        return ColorConstant.orange50;
      case IconButtonVariant.FillIndigoA400:
        return ColorConstant.indigoA400;
      case IconButtonVariant.FillLime50:
        return ColorConstant.lime50;
      case IconButtonVariant.OutlineIndigoA100:
        return null;
      default:
        return ColorConstant.gray200;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigoA100:
        return Border.all(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray200:
      case IconButtonVariant.FillBlue100:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillBlue50:
      case IconButtonVariant.FillLightgreen400:
      case IconButtonVariant.FillOrange50:
      case IconButtonVariant.FillIndigoA400:
      case IconButtonVariant.FillLime50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  RoundedBorder13,
  CircleBorder28,
  RoundedBorder16,
  CircleBorder20,
  CircleBorder24,
  CircleBorder32,
}

enum IconButtonPadding {
  PaddingAll7,
  PaddingAll4,
  PaddingAll12,
  PaddingAll16,
}

enum IconButtonVariant {
  FillGray200,
  FillBlue100,
  FillWhiteA700,
  FillBlue50,
  OutlineIndigoA100,
  FillLightgreen400,
  FillOrange50,
  FillIndigoA400,
  FillLime50,
}
