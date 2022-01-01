part of 'math_compute_bloc.dart';

@immutable
abstract class MathComputeEvent {}

class IncrementEvent extends MathComputeEvent {
   int sum;

  IncrementEvent(this.sum);
}

class DecrementEvent extends MathComputeEvent {
    int sum;

  DecrementEvent(this.sum);

}