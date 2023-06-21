import 'package:hive/hive.dart';
part 'note_model.g.dart';

//this number in hive type is unique in general
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  //this number in hive field is unique into this class only
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
// ( flutter packages pub run build_runner build ) ---> this code write it in terminal to generate file of this file model.
