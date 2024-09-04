import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/extension/context.dart';
class RadioOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String title;
  final ValueChanged<T> onChanged;

  const RadioOption(
      {Key? key,
      required this.title,
      required this.onChanged,
      required this.value,
      this.groupValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool selected = value == groupValue;

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        constraints: const BoxConstraints(minHeight: 26),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: selected
                    ? TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: context.colors.titleBlack,
                      )
                    : TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: context.colors.grey,
                      ),
              ),
            ),
            const SizedBox(width: 8),
            // selected
            //     ? SvgPicture.asset(
            //         Res.radio_selected,
            //         width: 20,
            //       )
            //     : SvgPicture.asset(
            //         Res.radio_unselected,
            //         width: 20,
            //       ),
          ],
        ),
      ),
    );
  }
}
