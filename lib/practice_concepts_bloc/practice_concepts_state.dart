part of 'practice_concepts_bloc.dart';

@immutable
abstract class PracticeConceptsState {}

class PracticeConceptsInitial extends PracticeConceptsState {}

class ColorChangeState extends PracticeConceptsState {
  final bool colorChange;
  ColorChangeState({required this.colorChange});
}
