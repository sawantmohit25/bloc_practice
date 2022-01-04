import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'api_handle_event.dart';
part 'api_handle_state.dart';

class ApiHandleBloc extends Bloc<ApiHandleEvent, ApiHandleState> {
  ApiHandleBloc() : super(ApiHandleInitial()) {
    on<ApiHandleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
