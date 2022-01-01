import 'package:flutter/material.dart';
import 'package:practice_app/math_compute_bloc/math_compute_bloc.dart';
import 'package:practice_app/math_compute_bloc/math_compute_view.dart';
import 'package:practice_app/practice_concepts_bloc/practice_concepts_bloc.dart';
import 'package:practice_app/practice_concepts_bloc/practice_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [
               BlocProvider<PracticeConceptsBloc>(
          create: (context) => PracticeConceptsBloc(),
        ),
        BlocProvider<MathComputeBloc>(
          create: (context) => MathComputeBloc(),
        ),

     ],
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MathComputeView()),
    );
  }
}
