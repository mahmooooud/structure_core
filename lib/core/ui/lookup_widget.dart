// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:imc/consts/storage.dart';
// import 'package:imc/consts/text_styles.dart';
// import 'package:imc/resources/strings_generated.dart';
// import 'package:imc/widgets/custom_text.dart';
//
// import '../../consts/colors.dart';
//
// class LookupWidget extends StatelessWidget {
//   LookupWidget(
//       {Key? key,
//       required this.items,
//       required this.labelText,
//       required this.hintText})
//       : super(key: key);
//
//   final String labelText;
//   final String hintText;
//   List<String> items;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: Implement build
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//             color: const Color(0xff80808034).withOpacity(.2), width: 1),
//         color: Colors.white,
//       ),
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 12,
//           ),
//           DropdownSearch<String>(
//               items: items,
//               dropdownDecoratorProps: DropDownDecoratorProps(
//                 dropdownSearchDecoration: InputDecoration(
//                     border: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                       borderSide:
//                           BorderSide(color: Color(ColorCode.white), width: 1),
//                     ),
//                     enabledBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                       borderSide:
//                           BorderSide(color: Color(ColorCode.white), width: 1),
//                     ),
//                     focusedBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                       borderSide:
//                           BorderSide(color: Color(ColorCode.white), width: 1),
//                     ),
//                     labelText: labelText,
//                     labelStyle: TextStyles.textLarge.copyWith(
//                         color: const Color(ColorCode.darkgrey).withOpacity(.6),
//                         fontWeight: FontWeight.normal),
//                     hintText: hintText,
//                     enabled: true,
//                     alignLabelWithHint: true,
//                     hintStyle: TextStyles.textMedium.copyWith(
//                         color: const Color(ColorCode.darkgrey),
//                         fontWeight: FontWeight.normal)),
//               ),
//               selectedItem: hintText,
//               dropdownButtonProps: const DropdownButtonProps(
//                 icon: Icon(Icons.keyboard_arrow_down_outlined), // Add this
//                 color: Color(ColorCode.orange),
//               ),
//               popupProps: PopupProps.bottomSheet(
//                 searchFieldProps: TextFieldProps(
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius:
//                               const BorderRadius.all(const Radius.circular(12)),
//                           borderSide: BorderSide(
//                               color: const Color(0xff808080).withOpacity(.5),
//                               width: 1),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius:
//                               const BorderRadius.all(const Radius.circular(12)),
//                           borderSide: BorderSide(
//                               color: const Color(0xff808080).withOpacity(.5),
//                               width: 1),
//                         ),
//                         focusedBorder: const OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(12)),
//                           borderSide: BorderSide(
//                               color: Color(ColorCode.orange), width: 1),
//                         ),
//                         hintText: titles.search,
//                         hintStyle: TextStyles.textMedium.copyWith(
//                             color: const Color(ColorCode.darkgrey),
//                             fontWeight: FontWeight.normal))),
//                 title: Container(
//                   height: 50,
//                   decoration: const BoxDecoration(
//                     color: Color(ColorCode.orange),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       titles.choose.toString(),
//                       maxLines: 2,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 bottomSheetProps: const BottomSheetProps(
//                     elevation: 16, backgroundColor: Color(ColorCode.white)),
//                 showSearchBox: true,
//                 showSelectedItems: true,
//                 itemBuilder: _customPopupItemBuilderExample,
//               ),
//               dropdownBuilder: _customDropDownExample),
//         ],
//       ),
//     );
//   }
//
//   Widget _customDropDownExample(BuildContext context, String? item) {
//     return CustomText(
//       item ?? '',
//       textAlign: TextAlign.start,
//       textStyle: const TextStyle(
//           color: Color(0xff363636),
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 0),
//       maxLines: 2,
//     );
//   }
//
//   Widget _customPopupItemBuilderExample(
//       BuildContext context, String item, bool isSelected) {
//     return Container(
//       decoration: const BoxDecoration(
//           color: Colors.white,
//           border: Border(
//               bottom: BorderSide(width: .5, color: Color(ColorCode.black)))),
//       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//       child: CustomText(
//         item,
//         textAlign: TextAlign.start,
//         textStyle: const TextStyle(
//             color: Color(0xff363636),
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//             letterSpacing: 0),
//         maxLines: 2,
//       ),
//     );
//   }
// }
