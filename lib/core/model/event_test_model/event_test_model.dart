import 'dart:ui';

class EventTestModel {
  String title;
  String desc;
  DateTime from;
  DateTime to;
  Color color;
  bool isAllDay;

  EventTestModel({
    required this.title,
    required this.desc,
    required this.from,
    required this.to,
    required this.color,
    required this.isAllDay,
  });
}
