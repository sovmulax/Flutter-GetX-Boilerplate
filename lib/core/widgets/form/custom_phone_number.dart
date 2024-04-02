// ignore_for_file: use_key_in_widget_constructors

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:templax/src/exports.dart_exporter.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Container(
              decoration: BoxDecoration(
                border: BorderDirectional(
                  end: BorderSide(
                    color: ColorConstant.gray200,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: getVerticalSize(
                      20.00,
                    ),
                    width: getHorizontalSize(
                      30.00,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      bottom: 16,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          4.00,
                        ),
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Text(
                      "+${country.phoneCode}",
                      style: AppTheme.of(context).subtitle2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomTextFormField(
              width: 212,
              focusNode: FocusNode(),
              controller: controller,
              hintText: "msg_your_phone_number",
              margin: getMargin(
                left: 12,
                top: 17,
                right: 6,
                bottom: 15,
              ),
              variant: TextFormFieldVariant.None,
              textInputType: TextInputType.phone,
              padding: TextFormFieldPadding.paddingAll2,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "Veuillez saisir un numéro de téléphone valide";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
