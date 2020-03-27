import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitbit/src/models/excercise.dart';
import 'package:fitbit/src/ui/screens/start_exercice_screen.dart';
import 'package:flutter/material.dart';

class ExercisesList extends StatelessWidget {
  const ExercisesList({Key key, this.exercises}) : super(key: key);

  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) => ListView(
        children: exercises
            .map((Exercise exercise) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<StartExerciseScreen>(
                            builder: (BuildContext context) =>
                                StartExerciseScreen(
                                  exercise: exercise,
                                )));
                  },
                  child: Hero(
                    tag: exercise.id,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedNetworkImage(
                              imageUrl: exercise.thumbnail,
                              placeholder: (BuildContext context, String url) =>
                                  Image(
                                image: NetworkImage(exercise.thumbnail),
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                              errorWidget: (BuildContext context, String url,
                                      Object error) =>
                                  Icon(Icons.error),
                              fit: BoxFit.cover,
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: <Color>[
                                    Color(0xFF000000),
                                    Color(0x00000000),
                                  ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center)),
                            ),
                          ),
                          Container(
                            height: 250,
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              exercise.title,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      );
}
