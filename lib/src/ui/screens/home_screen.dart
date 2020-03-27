import 'dart:convert';
import 'package:fitbit/src/models/excercise.dart';
import 'package:fitbit/src/ui/components/exercises_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String apiURL =
      'https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json';

  Future<List<Exercise>> getExercises() async {
    final http.Response response = await http.get(apiURL);

    if (response.statusCode == 200) {
      final List<dynamic> decodedJson =
          jsonDecode(response.body)['exercises'] as List<dynamic>;
      final List<Exercise> allExercises = decodedJson
          .map((dynamic exerciseJson) => Exercise.fromJson(exerciseJson))
          .toList();

      return allExercises;
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: FutureBuilder<List<Exercise>>(
          future: getExercises(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Exercise>> snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }

            return snapshot.hasData
                ? ExercisesList(exercises: snapshot.data)
                : const Center(
                    child: LinearProgressIndicator(),
                  );
          },
        ));
  }
}
