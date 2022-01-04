part of 'math_compute_bloc.dart';

@immutable
abstract class MathComputeState {}

class MathComputeInitial extends MathComputeState {
}

class IncrementState extends MathComputeState {
  final int sum;

  IncrementState(this.sum);

}

class DecrementState extends MathComputeState {
  final int sum;

  DecrementState(this.sum);

}