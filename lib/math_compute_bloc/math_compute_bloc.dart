import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'math_compute_event.dart';
part 'math_compute_state.dart';

class MathComputeBloc extends Bloc<MathComputeEvent, MathComputeState> {
  MathComputeBloc() : super(MathComputeInitial()) {
    on<MathComputeEvent>((event, emit) {
      if(event is IncrementEvent){
        event.sum=event.sum+1;
        emit(IncrementState(event.sum));
      }
      else if(event is DecrementEvent){
        event.sum=event.sum-1;
        emit(DecrementState(event.sum));        
      }
    });
  }
}
