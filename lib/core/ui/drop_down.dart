import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DimmedDropDown extends StatelessWidget {
  final String text;
  final bool? hideLoad;

  const DimmedDropDown({
    Key? key,
    required this.text,
     this.hideLoad=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFD2D2D7), width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!
                .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          hideLoad!?Icon(Icons.keyboard_arrow_down,color: Theme.of(context).colorScheme.primary):SpinKitFadingCircle(size: 24, color: Theme.of(context).colorScheme.primary)
        ],
      ),
    );
  }
}
