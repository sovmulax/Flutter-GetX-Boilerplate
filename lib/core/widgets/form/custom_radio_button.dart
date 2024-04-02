import 'package:templax/src/exports.dart_exporter.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.groupValue,
      this.onChanged,
      required this.value,
      required this.text});
  Object? groupValue;
  Object value;
  Function()? onChanged;
  String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: ColorConstant.gray300),
            child: Radio(
              value: value,
              activeColor: ColorConstant.indigoA400,
              groupValue: groupValue,
              onChanged: (val) => onChanged,
            ),
          ),
          Padding(
              padding: getPadding(left: 8, top: 1),
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
              ))
        ],
      ),
    );
  }
}
