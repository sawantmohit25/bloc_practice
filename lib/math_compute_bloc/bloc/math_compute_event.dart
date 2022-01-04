part of 'math_compute_bloc.dart';

@immutable
abstract class MathComputeEvent {}

class IncrementEvent extends MathComputeEvent {
}

class DecrementEvent extends MathComputeEvent {
}