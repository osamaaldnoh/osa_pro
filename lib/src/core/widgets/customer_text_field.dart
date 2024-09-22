import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

// class CustomerTextField extends StatelessWidget {
//   final String? hintText;
//   final String? titleText;
//   final String? labelText;
//   final TextAlign textAlign;
//   final TextEditingController? controller;
//   final FocusNode? focusNode;
//   final FocusNode? nextFocus;
//   final TextInputType inputType;
//   final TextInputAction inputAction;
//   final bool isPassword;
//   final bool isAmount;
//   final bool showCodePicker;
//   final bool isRequiredFill;
//   final bool readOnly;
//   final bool filled;
//   final void Function()? onTap;
//   final void Function()? suffixOnTap;
//   final void Function()? prefixOnTap;
//   final Function(String text)? onChanged;
//   final String? Function(String?)? validator;
//   final bool isEnabled;
//   final int maxLines;
//   final TextCapitalization capitalization;
//   final double borderRadius;
//   final IconData? prefixIcon;
//   final String? suffixIcon;
//   final double suffixIconSize;
//   final bool showBorder;
//   final bool showLabelText;
//   final String? countryDialCode;
//   final double prefixHeight;
//   final Color borderColor;
//   final List<TextInputFormatter>? inputFormatters;
//   // final Function(CountryCode countryCode)? onCountryChanged;
//   final bool required;
//   const CustomerTextField({
//     super.key,
//     this.hintText = 'Write something...',
//     this.controller,
//     this.focusNode,
//     this.titleText,
//     this.nextFocus,
//     this.isEnabled = true,
//     this.borderColor = AppColors.secondaryColor, //const Color(0xFFBFBFBF),
//     this.inputType = TextInputType.text,
//     this.inputAction = TextInputAction.next,
//     this.maxLines = 1,
//     this.onChanged,
//     this.onTap,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.suffixIconSize = 12,
//     this.capitalization = TextCapitalization.none,
//     this.readOnly = false,
//     this.isPassword = false,
//     this.isAmount = false,
//     this.showCodePicker = false,
//     this.isRequiredFill = false,
//     this.showLabelText = true,
//     this.showBorder = false,
//     this.filled = true,
//     this.borderRadius = RadiusManager.r20,
//     this.prefixHeight = 50,
//     this.countryDialCode,
//     // this.onCountryChanged,
//     this.validator,
//     this.inputFormatters,
//     this.labelText,
//     this.textAlign = TextAlign.start,
//     this.required = false,
//     this.suffixOnTap,
//     this.prefixOnTap,
//   });
//   @override
//   Widget build(BuildContext context) {
//     bool obscureText = true;
//     return Container(
//       margin: const EdgeInsets.only(top: MarginManager.m10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // if (titleText != null)
//           //   RichText(text: TextSpan(
//           //       text: titleText ?? "", style: Theme.of(context).textTheme.titleMedium!.copyWith(
//           //       fontWeight: FontWeight.w400,
//           //       fontSize: 14, color: const Color(0xFF202532)), children: [
//           //         if (isRequiredFill)
//           //           TextSpan(text: " *", style: Theme.of(context)
//           //           .textTheme.titleMedium!.copyWith(
//           //                 fontWeight: FontWeight.w500, fontSize: 16, color: Colors.red))])),
//           // if (titleText != null) const SizedBox(height: 8),
//           TextFormField(
//             maxLines: maxLines,
//             controller: controller,
//             focusNode: focusNode,
//             validator: validator,
//             textAlign: textAlign,
//             readOnly: readOnly,
//             onTap: onTap,
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                   fontSize: AppFontSize.fontSizeDefault,
//                 ),
//             textInputAction: inputAction,
//             keyboardType: inputType,
//             cursorColor: Theme.of(context).primaryColor,
//             textCapitalization: capitalization,
//             enabled: isEnabled,
//             autofocus: false,
//             autofillHints: inputType == TextInputType.name
//                 ? [AutofillHints.name]
//                 : inputType == TextInputType.emailAddress
//                     ? [AutofillHints.email]
//                     : inputType == TextInputType.phone
//                         ? [AutofillHints.telephoneNumber]
//                         : inputType == TextInputType.streetAddress
//                             ? [AutofillHints.fullStreetAddress]
//                             : inputType == TextInputType.url
//                                 ? [AutofillHints.url]
//                                 : inputType == TextInputType.visiblePassword
//                                     ? [AutofillHints.password]
//                                     : null,
//             obscureText: isPassword ? obscureText : false,
//             inputFormatters: inputType == TextInputType.phone
//                 ? <TextInputFormatter>[
//                     FilteringTextInputFormatter.allow(RegExp(r'[0-9+]'))
//                   ]
//                 : isAmount
//                     ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))]
//                     : inputFormatters,
//             decoration: InputDecoration(
//                 alignLabelWithHint: false,
//                 // labelText != '' || labelText != null?
//                 //  true:false,
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(borderRadius),
//                     borderSide: BorderSide(
//                       color: borderColor,
//                       width: showBorder ? 0 : SizeManager.widthBorder,
//                     )),
//                 focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(borderRadius),
//                     borderSide: BorderSide(
//                       color: Theme.of(context).primaryColor, //borderColor,
//                       width: showBorder ? 0 : SizeManager.widthBorder,
//                     )),
//                 enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(borderRadius),
//                     borderSide: BorderSide(
//                       color: borderColor,
//                       width: showBorder ? 0 : SizeManager.widthBorder,
//                     )),
//                 fillColor: Theme.of(context).cardColor,
//                 floatingLabelStyle: showLabelText
//                     ? Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         fontSize: AppFontSize.fontSizeDefault,
//                         color: Theme.of(context).hintColor.withOpacity(.75))
//                     : null,
//                 filled: filled,
//                 //  labelText : showLabelText? labelText?? hintText : null,
//                 labelStyle: showLabelText
//                     ? Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         fontSize: AppFontSize.fontSizeDefault,
//                         color: Theme.of(context).hintColor)
//                     : null,
//                 // // label: labelText != '' || labelText != null
//                 // // ? Text.rich(TextSpan(children: [
//                 // //   TextSpan(text: labelText?? '',
//                 // //   style: Theme.of(context).textTheme.bodyMedium!
//                 // //   .copyWith(color: Theme.of(context).hintColor.withOpacity(.75))),
//                 // //   if(required && labelText != null)
//                 // //   TextSpan(text : ' *', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.error))
//                 // // ])):
//                 // null,
//                 hintText: hintText,
//                 hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                     fontSize: AppFontSize.fontSizeDefault,
//                     color: AppColors.secondaryColor),
//                 contentPadding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 prefixIcon: prefixIcon != null
//                     ? InkWell(
//                         onTap: prefixOnTap,
//                         child: Container(
//                           width: prefixHeight,
//                           padding: const EdgeInsets.all(1),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(borderRadius),
//                                   bottomLeft: Radius.circular(borderRadius))),
//                           child: Center(
//                             child: FaIcon(
//                               prefixIcon,
//                               size: SizeManager.s18,
//                             ),
//                             // Image.asset(prefixIcon!, height: 20, width: 20,
//                             //   color:  Theme.of(context).primaryColor.withOpacity(.6))
//                           ),
//                         ),
//                       )
//                     : null,
//                 suffixIcon: isPassword
//                     ? IconButton(
//                         // ignore: dead_code
//                         icon: Icon(
//                             obscureText
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color:
//                                 Theme.of(context).hintColor.withOpacity(0.5)),
//                         onPressed: () {})
//                     : suffixIcon != null
//                         ? SizedBox(
//                             width: 20,
//                             child: Padding(
//                               padding: const EdgeInsets.all(PaddingManager.p10),
//                               child: InkWell(
//                                   onTap: suffixOnTap,
//                                   child: Image.asset(
//                                     suffixIcon!,
//                                     color: Theme.of(context).hintColor,
//                                   )),
//                             ))
//                         : null),
//             onFieldSubmitted: (text) => nextFocus != null
//                 ? FocusScope.of(context).requestFocus(nextFocus)
//                 : null,
//             onChanged: onChanged,
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomerTextFieldNew extends StatelessWidget {
  final String? hintText;
  final String? titleText;
  // final String? labelText;
  final TextAlign textAlign;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPassword;
  final bool isAmount;
  // final bool showCodePicker;
  final bool isRequiredFill;
  final bool readOnly;
  final bool filled;
  final void Function()? onTap;
  final void Function()? suffixOnTap;
  final void Function()? prefixOnTap;
  final Function(String text)? onChanged;
  final String? Function(String?)? validator;
  final bool isEnabled;
  final int maxLines;
  final TextCapitalization capitalization;
  final double borderRadius;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final String? suffixIcon;
  final double suffixIconSize;
  final bool showBorder;
  final bool showLabelText;
  // final String? countryDialCode;
  final double prefixHeight;
  final Color borderColor;
  final List<TextInputFormatter>? inputFormatters;
  // final Function(CountryCode countryCode)? onCountryChanged;
  // final bool required;

  const CustomerTextFieldNew({
    super.key,
    this.hintText = 'Write something...',
    this.controller,
    this.focusNode,
    this.titleText,
    this.nextFocus,
    this.autofocus = false,
    this.isEnabled = true,
    this.borderColor = const Color(0xFFBFBFBF),
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.maxLines = 1,
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.prefixIconColor = AppColors.primaryColor,
    this.prefixIconSize = SizeManager.s22,
    this.suffixIcon,
    this.suffixIconSize = 12,
    this.capitalization = TextCapitalization.none,
    this.readOnly = false,
    this.isPassword = false,
    this.isAmount = false,
    // this.showCodePicker = false,
    this.isRequiredFill = false,
    this.showLabelText = true,
    this.showBorder = false,
    this.filled = true,
    this.borderRadius = RadiusManager.r15,
    this.prefixHeight = 50,
    // this.countryDialCode,
    // this.onCountryChanged,
    this.validator,
    this.inputFormatters,
    // this.labelText,
    this.textAlign = TextAlign.start,
    // this.required = false,
    this.suffixOnTap,
    this.prefixOnTap,
  });

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
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
                  children: [
                    if (isRequiredFill)
                      TextSpan(
                          text: " *",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.red))
                  ]),
            ),
          if (titleText != null) const SizedBox(height: 8),
          TextFormField(
            maxLines: maxLines,
            controller: controller,
            focusNode: focusNode,
            validator: validator,
            textAlign: textAlign,
            readOnly: readOnly,
            onTap: onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: context.labelLarge,
            // .copyWith(fontSize: AppFontSize.fontSizeDefault),
            textInputAction: inputAction,
            keyboardType: inputType,
            cursorColor: Theme.of(context).primaryColor,
            textCapitalization: capitalization,
            enabled: isEnabled,
            autofocus: autofocus!,
            autofillHints: inputType == TextInputType.name
                ? [AutofillHints.name]
                : inputType == TextInputType.emailAddress
                    ? [AutofillHints.email]
                    : inputType == TextInputType.phone
                        ? [AutofillHints.telephoneNumber]
                        : inputType == TextInputType.streetAddress
                            ? [AutofillHints.fullStreetAddress]
                            : inputType == TextInputType.url
                                ? [AutofillHints.url]
                                : inputType == TextInputType.visiblePassword
                                    ? [AutofillHints.password]
                                    : null,
            obscureText: isPassword ? obscureText : false,
            inputFormatters: inputType == TextInputType.phone
                ? <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9+]'))
                  ]
                : isAmount
                    ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))]
                    : inputFormatters,
            decoration: InputDecoration(
                alignLabelWithHint: true,
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
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: AppFontSize.fontSizeDefault,
                      color: AppColors.hintTextColor,
                    ),
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
                              size: prefixIconSize,
                              color: prefixIconColor,
                            ),
                            // Image.asset(prefixIcon!, height: 20, width: 20,
                            //   color:  Theme.of(context).primaryColor.withOpacity(.6))
                          ),
                        ),
                      )
                    : null,
                suffixIcon: isPassword
                    ? IconButton(
                        // ignore: dead_code
                        icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color:
                                Theme.of(context).hintColor.withOpacity(0.5)),
                        onPressed: () {})
                    : suffixIcon != null
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
            onFieldSubmitted: (text) => nextFocus != null
                ? FocusScope.of(context).requestFocus(nextFocus)
                : null,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class BuildTypeaheadFiled extends StatelessWidget {
  BuildTypeaheadFiled({
    this.hintText = 'Write something...',
    this.controller,
    this.focusNode,
    this.titleText,
    this.nextFocus,
    this.isEnabled = true,
    this.borderColor = const Color(0xFFBFBFBF),
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.onChanged,
    super.key,
    this.isPassword = false,
    this.isAmount = false,
    this.prefixIcon,
    this.prefixIconColor = AppColors.primaryColor,
    this.prefixIconSize = SizeManager.s22,
    this.suffixIcon,
    this.suffixIconSize = 12,
    required this.suggestionsCallback,
    required this.onSelected,
    this.showLabelText = true,
    this.isRequiredFill = false,
    this.isValidator = false,
    // this.onSaved,
    this.readOnly = false,
    this.textAlign = TextAlign.start,
    this.onTap,
    this.capitalization = TextCapitalization.none,
    this.showBorder = false,
    this.filled = true,
    this.borderRadius = RadiusManager.r15,
    this.prefixHeight = 50,
    this.suffixOnTap,
    this.prefixOnTap,
    this.validator,
  });
  // final String label;
  final String? titleText;
  final TextAlign textAlign;
  final String? hintText;
  final bool isRequiredFill;
  final void Function()? suffixOnTap;
  final void Function()? prefixOnTap;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final double? prefixIconSize;
  final String? suffixIcon;
  final double suffixIconSize;
  final bool isPassword;
  final bool isAmount;
  // final IconData iconData;
  // final String hint;
  List<String> Function(String) suggestionsCallback;
  final String? Function(String?)? validator;
  void Function(String?)? onSelected;
  final TextInputAction? inputAction;
  final TextEditingController? controller;
  final bool readOnly;
  final bool filled;
  final void Function()? onTap;
  final TextInputType? inputType;
  final FocusNode? focusNode;
  final bool isValidator;
  // final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextCapitalization capitalization;
  final double borderRadius;
  final bool isEnabled;
  final bool showBorder;
  final bool showLabelText;
  // final String? countryDialCode;
  final double prefixHeight;
  final Color borderColor;
  final FocusNode? nextFocus;

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
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
                    children: [
                      if (isRequiredFill)
                        TextSpan(
                            text: " *",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.red))
                    ]),
              ),
            if (titleText != null) const SizedBox(height: 8),
            TypeAheadField<String?>(
              controller: controller,
              // hideOnSelect: false,

              builder: (context, controller, focusNode) {
                return TextFormField(
                  // maxLines: maxLines,
                  controller: controller,
                  focusNode: focusNode,
                  validator: validator,
                  textAlign: textAlign,
                  readOnly: readOnly,
                  onTap: onTap,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: context.labelLarge,
                  textInputAction: inputAction,
                  keyboardType: inputType,
                  cursorColor: Theme.of(context).primaryColor,
                  textCapitalization: capitalization,
                  enabled: isEnabled,
                  // autofocus: autofocus!,
                  autofillHints: inputType == TextInputType.name
                      ? [AutofillHints.name]
                      : inputType == TextInputType.emailAddress
                          ? [AutofillHints.email]
                          : inputType == TextInputType.phone
                              ? [AutofillHints.telephoneNumber]
                              : inputType == TextInputType.streetAddress
                                  ? [AutofillHints.fullStreetAddress]
                                  : inputType == TextInputType.url
                                      ? [AutofillHints.url]
                                      : inputType ==
                                              TextInputType.visiblePassword
                                          ? [AutofillHints.password]
                                          : null,
                  // obscureText: isPassword ? obscureText : false,
                  // inputFormatters: inputType == TextInputType.phone
                  //     ? <TextInputFormatter>[
                  //         FilteringTextInputFormatter.allow(RegExp(r'[0-9+]'))
                  //       ]
                  //     : isAmount
                  //         ? [
                  //             FilteringTextInputFormatter.allow(
                  //                 RegExp(r'[0-9.]'))
                  //           ]
                  //         : inputFormatters,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
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
                            color:
                                Theme.of(context).primaryColor, //borderColor,
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
                              color:
                                  Theme.of(context).hintColor.withOpacity(.75))
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
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: AppFontSize.fontSizeDefault,
                                color: AppColors.hintTextColor,
                              ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      prefixIcon: prefixIcon != null
                          ? InkWell(
                              onTap: prefixOnTap,
                              child: Container(
                                width: prefixHeight,
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(borderRadius),
                                        bottomLeft:
                                            Radius.circular(borderRadius))),
                                child: Center(
                                  child: FaIcon(
                                    prefixIcon,
                                    size: prefixIconSize,
                                    color: prefixIconColor,
                                  ),
                                  // Image.asset(prefixIcon!, height: 20, width: 20,
                                  //   color:  Theme.of(context).primaryColor.withOpacity(.6))
                                ),
                              ),
                            )
                          : null,
                      suffixIcon: isPassword
                          ? IconButton(
                              // ignore: dead_code
                              icon: Icon(
                                  obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.5)),
                              onPressed: () {})
                          : suffixIcon != null
                              ? SizedBox(
                                  width: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        PaddingManager.p10),
                                    child: InkWell(
                                        onTap: suffixOnTap,
                                        child: Image.asset(
                                          suffixIcon!,
                                          color: Theme.of(context).hintColor,
                                        )),
                                  ))
                              : null),

                  // onFieldSubmitted: (text) => nextFocus != null
                  //     ? FocusScope.of(context).requestFocus(nextFocus)
                  //     : null,
                  onChanged: onChanged,
                );
              },

              // textFieldConfiguration: TextFieldConfiguration(
              //   controller: controller,
              //   onChanged: onChanged,
              //   focusNode: focusNode,
              //   //  autovalidateMode: AutovalidateMode.onUserInteraction,
              //   textInputAction: inputAction,
              //   keyboardType: inputType!,
              //   autofillHints: inputType == TextInputType.name
              //       ? [AutofillHints.name]
              //       : inputType == TextInputType.emailAddress
              //           ? [AutofillHints.email]
              //           : inputType == TextInputType.phone
              //               ? [AutofillHints.telephoneNumber]
              //               : inputType == TextInputType.streetAddress
              //                   ? [AutofillHints.fullStreetAddress]
              //                   : inputType == TextInputType.visiblePassword
              //                       ? [AutofillHints.password]
              //                       : null,

              //   decoration: InputDecoration(
              //     suffixIconColor: AppColors.grey,
              //     suffixIcon: Icon(
              //       iconData,
              //       size: SizeConfig.safeBlockHorizontal * 4.8,
              //     ),
              //     floatingLabelBehavior: FloatingLabelBehavior.always,
              //     contentPadding: EdgeInsets.symmetric(
              //         horizontal: SizeConfig.safeBlockHorizontal * 5.8,
              //         vertical: SizeConfig.blockSizeVertical * 1),
              //     hintText: hint,
              //     hintStyle: subTitleStyle14.copyWith(
              //         fontSize: SizeConfig.safeBlockHorizontal * 3),
              //     labelStyle: subTitleStyle.copyWith(
              //         fontSize: SizeConfig.safeBlockHorizontal * 3.3),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(
              //           SizeConfig.safeBlockHorizontal * 8),
              //       borderSide: BorderSide(color: AppColors.grey),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(
              //           SizeConfig.safeBlockHorizontal * 8),
              //       borderSide: BorderSide(color: AppColors.primary),
              //     ),
              //     label: Container(
              //       margin: EdgeInsets.symmetric(
              //           horizontal: SizeConfig.safeBlockHorizontal * 2.6),
              //       child: Text(
              //         label,
              //       ),
              //     ),
              //   ),
              // ),
              // hideOnEmpty: true,
              // suggestionsBoxDecoration: SuggestionsBoxDecoration(
              //   borderRadius: BorderRadius.circular(RadiusManager.r15),
              //   color: AppColors.secColor,
              //   elevation: 0,
              // ),

              decorationBuilder: (context, child) {
                return Material(
                  color: AppColors.bgColor,
                  type: MaterialType.card,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  child: child,
                );
              },
              // offset: Offset(0, 12),
              // constraints: BoxConstraints(maxHeight: 500),
              emptyBuilder: (context) => SizedBox(),
              itemBuilder: (context, String? suggestion) => ListTile(
                focusColor: AppColors.bgColor,
                hoverColor: AppColors.bgColor,
                splashColor: AppColors.bgColor,
                title: Text(suggestion!),
              ),
              suggestionsCallback: suggestionsCallback,
              onSelected: onSelected,
              // onSaved: onSaved,
              // validator: isValidator
              //     ? (value) {
              //         if (value!.isEmpty) {
              //           return 'الرجاء ادخل $label';
              //         }
              //       }
              //     : (value) {},
            ),
          ],
        ));
  }
}
