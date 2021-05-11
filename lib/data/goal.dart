import 'package:hive/hive.dart';

part 'goal.g.dart';

@HiveType(typeId: 0)
class Goal {
  @HiveField(0)
  String title;
  @HiveField(1)
  String desc; 
  @HiveField(2)
  String difficulty;

  Goal(this.title,this.desc,this.difficulty);
}