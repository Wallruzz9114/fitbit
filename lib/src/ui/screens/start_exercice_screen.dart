import 'package:fitbit/src/models/excercise.dart';
import 'package:flutter/material.dart';

class StartExerciseScreen extends StatefulWidget {
  const StartExerciseScreen({Key key, this.exercise}) : super(key: key);

  final Exercise exercise;

  @override
  _StartExerciseScreenState createState() => _StartExerciseScreenState();
}

class _StartExerciseScreenState extends State<StartExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Hero(
        tag: widget.exercise.id,
        child: Image(
          image: NetworkImage(widget.exercise.thumbnail),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
