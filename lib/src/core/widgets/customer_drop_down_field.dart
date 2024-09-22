import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

class CustomDropDownTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? hintTextSearch;
  final List<DropDownValueModel> dropDownList;
  final String? titleText;
  final TextAlign textAlign;
  final SingleValueDropDownController? controller;
  final FocusNode? focusNode;
  final TextInputType inputType;

  // final bool isRequiredFill;
  final bool readOnly;
  final bool filled;
  // final void Function()? onTap;
  final void Function()? suffixOnTap;
  final void Function()? prefixOnTap;
  final void Function(dynamic text)? onChanged;
  final String? Function(String?)? validator;
  final bool isEnabled;
  final bool searchEnable;
  final double borderRadius;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final String? suffixIcon;
  final double suffixIconSize;
  final bool showBorder;
  final bool showLabelText;
  final double prefixHeight;
  final Color borderColor;
  final bool required;

  const CustomDropDownTextFieldWidget({
    super.key,
    this.hintText = 'Write something...',
    this.hintTextSearch,
    required this.dropDownList,
    this.controller,
    this.focusNode,
    this.titleText,
    this.isEnabled = true,
    this.searchEnable = true,
    this.borderColor = const Color(
        0xFFBFBFBF), //AppColors1.secondaryTextColor,//const Color(0xFFBFBFBF),
    this.inputType = TextInputType.text,
    this.onChanged,
    this.prefixIcon,
    this.prefixIconColor = AppColors.primaryColor,
    this.prefixIconSize = SizeManager.s22,
    this.suffixIcon,
    this.suffixIconSize = 12,
    this.readOnly = false,
    // this.isRequiredFill = false,
    this.showLabelText = true,
    this.showBorder = false,
    this.filled = true,
    this.borderRadius = RadiusManager.r15,
    this.prefixHeight = 50,
    // this.onCountryChanged,
    this.validator,
    // this.labelText,
    this.textAlign = TextAlign.start,
    this.required = false,
    this.suffixOnTap,
    this.prefixOnTap,
  });

  @override
  Widget build(BuildContext context) {
    // bool _obscureText = true;
    return Container(
      margin: const EdgeInsets.only(top: MarginManager.m10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (titleText != null)
            RichText(
              text: TextSpan(
                text: titleText ?? "",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      // fontWeight: FontWeightManager.semiBold,
                      fontSize: AppFontSize.fontSizeDefault,
                      //  color:  AppColors.blackColor
                    ),
              ),
            ),
          if (titleText != null) const SizedBox(height: 8),
          DropDownTextField(
            controller: controller,
            dropDownList: dropDownList,
            listPadding: ListPadding(bottom: 8, top: 8),
            listSpace: -5,
            clearOption: false,
            textFieldFocusNode: focusNode,
            textStyle: context.labelLarge,
            dropDownItemCount: 4,
            searchFocusNode: focusNode,
            validator: validator,

            readOnly: readOnly,
            dropdownRadius: borderRadius,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            listTextStyle: context.bodyMedium,
            // Theme.of(context)
            //     .textTheme
            //     .bodyMedium!
            //     .copyWith(fontSize: AppFontSize.fontSizeDefault),
            keyboardType: inputType,
            // cursorColor: Theme.of(context).primaryColor,
            // enableSearch: searchEnable,
            isEnabled: isEnabled,

            searchAutofocus: false,
            searchKeyboardType: inputType,
            textFieldDecoration: InputDecoration(
                alignLabelWithHint: false,

                // labelText != '' || labelText != null?
                //  true:false,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder, //.75,
                    )),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder, //.75,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor, //borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder,
                    )),
                fillColor: Theme.of(context).scaffoldBackgroundColor,
                floatingLabelStyle: showLabelText
                    ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: AppFontSize.fontSizeDefault,
                        color: Theme.of(context).hintColor.withOpacity(.75))
                    : null,
                filled: filled,
                //  labelText : showLabelText? labelText?? hintText : null,
                labelStyle: showLabelText
                    ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: AppFontSize.fontSizeDefault,
                        color: Theme.of(context).hintColor)
                    : null,

                // // label: labelText != '' || labelText != null
                // // ? Text.rich(TextSpan(children: [
                // //   TextSpan(text: labelText?? '',
                // //   style: Theme.of(context).textTheme.bodyMedium!
                // //   .copyWith(color: Theme.of(context).hintColor.withOpacity(.75))),
                // //   if(required && labelText != null)
                // //   TextSpan(text : ' *', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.error))
                // // ])):
                // null,
                hintText: hintText,
                hintStyle: context.bodyMedium!,

                // Theme.of(context).textTheme.bodyMedium!.copyWith(
                //     fontSize: AppFontSize.fontSizeDefault,
                //     color: AppColors.hintTextColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                prefixIcon: prefixIcon != null
                    ? InkWell(
                        onTap: prefixOnTap,
                        child: Container(
                          width: prefixHeight,
                          // padding: const EdgeInsets.all(1),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(borderRadius),
                                  bottomLeft: Radius.circular(borderRadius))),
                          child: FaIcon(
                            prefixIcon,
                            size: prefixIconSize,
                            color: prefixIconColor,
                          ),
                        ),
                      )
                    : null,
                suffixIcon: suffixIcon != null
                    ? SizedBox(
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(PaddingManager.p10),
                          child: InkWell(
                              onTap: suffixOnTap,
                              child: Image.asset(
                                suffixIcon!,
                                color: Theme.of(context).hintColor,
                              )),
                        ))
                    : null),
            onChanged: onChanged,

            searchDecoration: InputDecoration(
                alignLabelWithHint: false,
                // labelText != '' || labelText != null?
                //  true:false,

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor, //borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                      color: borderColor,
                      width: showBorder ? 0 : SizeManager.widthBorder,
                    )),
                fillColor: Theme.of(context).scaffoldBackgroundColor,
                floatingLabelStyle: showLabelText
                    ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: AppFontSize.fontSizeDefault,
                        color: Theme.of(context)
                            .hintColor
                            .withOpacity(SizeManager.widthBorder))
                    : null,
                filled: filled,
                //  labelText : showLabelText? labelText?? hintText : null,
                labelStyle: showLabelText
                    ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: AppFontSize.fontSizeDefault,
                        color: Theme.of(context).hintColor)
                    : null,

                // // label: labelText != '' || labelText != null
                // // ? Text.rich(TextSpan(children: [
                // //   TextSpan(text: labelText?? '',
                // //   style: Theme.of(context).textTheme.bodyMedium!
                // //   .copyWith(color: Theme.of(context).hintColor.withOpacity(SizeManager.widthBorder))),
                // //   if(required && labelText != null)
                // //   TextSpan(text : ' *', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.error))
                // // ])):
                // null,
                hintText: hintTextSearch,
                hintStyle: context.bodyMedium!,
                // Theme.of(context).textTheme.bodyMedium!.copyWith(
                //     fontSize: AppFontSize.fontSizeDefault,
                //     color: AppColors.hintTextColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                prefixIcon: prefixIcon != null
                    ? InkWell(
                        onTap: prefixOnTap,
                        child: Container(
                          width: prefixHeight,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(borderRadius),
                                  bottomLeft: Radius.circular(borderRadius))),
                          child: Center(
                            child: FaIcon(
                              prefixIcon,
                              size: SizeManager.s18,
                            ),
                            // Image.asset(prefixIcon!, height: 20, width: 20,
                            //   color:  Theme.of(context).primaryColor.withOpacity(.6))
                          ),
                        ),
                      )
                    : null,
                suffixIcon: suffixIcon != null
                    ? SizedBox(
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(PaddingManager.p10),
                          child: InkWell(
                              onTap: suffixOnTap,
                              child: Image.asset(
                                suffixIcon!,
                                color: Theme.of(context).hintColor,
                              )),
                        ))
                    : null),
          ),
        ],
      ),
    );
  }
}
