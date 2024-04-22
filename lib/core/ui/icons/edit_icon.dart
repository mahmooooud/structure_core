import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/ui/transform/horizontal_mirror_widget.dart';

class EditIcon extends StatelessWidget {
  final double size;
  final Color color;

  const EditIcon({Key? key, required this.color, this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalMirror(
        child: SizedBox.square(
            dimension: size,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset(Res.edit, color: color, width: size, height: size),
              ],
            )));
  }
}
