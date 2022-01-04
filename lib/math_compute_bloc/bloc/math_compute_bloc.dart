import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'math_compute_event.dart';
part 'math_compute_state.dart';

class MathComputeBloc extends Bloc<MathComputeEvent, MathComputeState> {
  int sum=0;
  MathComputeBloc() : super(MathComputeInitial()) {
    on<MathComputeEvent>((event, emit) {
      if(event is IncrementEvent){
        sum=sum+1;
        emit(IncrementState(sum));
      }
      else if(event is DecrementEvent){
        sum=sum-1;
        emit(DecrementState(sum));        
      }
    });
  }
}
