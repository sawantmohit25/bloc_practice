import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'practice_concepts_event.dart';
part 'practice_concepts_state.dart';

class PracticeConceptsBloc extends Bloc<PracticeConceptsEvent, PracticeConceptsState> {
  bool colorChange=false;
  PracticeConceptsBloc() : super(PracticeConceptsInitial()) {
    on<PracticeConceptsEvent>((event, emit) {
      if(event is ColorChange){
        if(colorChange==false){
          colorChange=true;
          emit(ColorChangeState(colorChange:colorChange));
        }
        else{
          colorChange=false;
          emit(ColorChangeState(colorChange:colorChange));
        }
      }
    });
  }
}
