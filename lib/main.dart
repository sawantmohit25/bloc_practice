import 'package:flutter/material.dart';
import 'package:practice_app/api_handle/bloc/api_handle_bloc.dart';
import 'package:practice_app/api_handle/ui/api_handle_view.dart';
import 'package:practice_app/math_compute_bloc/bloc/math_compute_bloc.dart';
import 'package:practice_app/math_compute_bloc/ui/math_compute_view.dart';
import 'package:practice_app/practice_concepts_bloc/bloc/practice_concepts_bloc.dart';
import 'package:practice_app/practice_concepts_bloc/ui/practice_view.dart';
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
        BlocProvider<ApiHandleBloc>(
          create: (context) => ApiHandleBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ApiHandleView()),
    );
  }
}
