// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:abh/core/common/extension/context.dart';
// import 'package:abh/core/theme/app_theme.dart';
// import 'package:structure_core/core/ui/svg_assets.dart';
// import 'package:abh/res.dart';

// class CustomDropDown extends StatelessWidget { 
//   CustomDropDown({
//     this.decoration,
//     this.items,
//     this.label,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.enabled = true,
//     Key? key,
//   }) : super(key: key);
//   Widget? suffixIcon;
//   Widget? prefixIcon;
//   final String? label;
//   final InputDecoration? decoration;
//   List<String>? items;
//   bool enabled;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 5.w),
//       child: DropdownSearch<String>(
//         popupProps: PopupProps.bottomSheet(
//           showSelectedItems: true,
//           showSearchBox: true,
//           constraints: BoxConstraints(maxHeight: 300.h),
//           disabledItemFn: (String s) => s.startsWith('I'),
//         ),
//         items: items ?? [],
//         dropdownButtonProps: DropdownButtonProps(
//           icon: SvgAssets.getWidget(
//             Res.arrow_down,
//             color: enabled ? context.colors.primary : context.colors.grey,
//           ),
//         ),
//         dropdownDecoratorProps: DropDownDecoratorProps(
//             baseStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
//                   color: context.colors.grey4,
//                   fontWeight: FontWeight.w300,
//                   fontSize: 14.sp,
//                 ),
//             dropdownSearchDecoration: decoration ??
//                 InputDecoration(
//                     contentPadding: const EdgeInsets.symmetric(
//                         vertical: 15, horizontal: 15),
//                     errorStyle: context.textTheme.bodySmall!
//                         .copyWith(color: Colors.red),
//                     hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           color: context.colors.grey4,
//                           fontWeight: FontWeight.w300,
//                           fontSize: 14.sp,
//                         ),
//                     enabled: enabled,
//                     labelText: label,
//                     labelStyle: context.textTheme.bodyText1!.copyWith(
//                         color: context.colors.grey4,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: AppTheme.fontFamily,
//                         fontSize: 16.sp),
//                     border: InputBorder.none,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(4.r)),
//                       borderSide:
//                           const BorderSide(color: Color(0xFFD2D2D7), width: 1),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(4.r)),
//                       borderSide:
//                           const BorderSide(color: Color(0xFFD2D2D7), width: 1),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(0.r)),
//                       borderSide: BorderSide(
//                           color: const Color(0xffF25C54), width: 1.w),
//                     ),
//                     focusedErrorBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(0)),
//                       borderSide:
//                           BorderSide(color: Color(0xffF25C54), width: 1),
//                     ),
//                     disabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(4.r)),
//                       borderSide:
//                           const BorderSide(color: Color(0xFFD2D2D7), width: 1),
//                     ),
//                     fillColor: enabled ? Colors.white : context.colors.grey6,
//                     filled: true,
//                     suffixIcon: suffixIcon)),
//         onChanged: print,
//       ),
//     );
//   }
// }
