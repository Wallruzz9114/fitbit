import 'package:fitbit/src/models/excercise.dart';

class ExcerciseHub {
  ExcerciseHub({this.exercises});

  ExcerciseHub.fromJson(Map<String, dynamic> data) {
    if (data['exercises'] != null) {
      exercises = <Exercise>[];
      data['exercises'].forEach((Map<String, dynamic> json) {
        exercises.add(Exercise.fromJson(json));
      });
    }
  }

  List<Exercise> exercises;

  Map<String, dynamic> toJson() => exercises != null
      ? <String, dynamic>{'exercises': exercises}
      : <String, dynamic>{};
}
