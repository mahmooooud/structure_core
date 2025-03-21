import 'dart:ui';

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }

  firstLetters() {
    if(isEmpty){
      return "";
    }else{
      return "${split(" ").first[0]}${split(" ").last[0]}";
    }
  }
}
