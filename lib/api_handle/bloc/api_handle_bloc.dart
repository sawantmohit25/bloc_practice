import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice_app/api_handle/data/model/covid_data_model.dart';
import 'package:practice_app/api_handle/data/repositories/covid_data_repository.dart';

part 'api_handle_event.dart';
part 'api_handle_state.dart';

class ApiHandleBloc extends Bloc<ApiHandleEvent, ApiHandleState> {
  CovidDataRepository covidDataRepository = CovidDataRepository();
  late CovidDataModel covidDataModel;
  ApiHandleBloc() : super(ApiHandleInitial()) {
    on<ApiHandleEvent>((event, emit) async {
      if (event is FetchCovidData) {
        emit(CovidDataLoadingState());
        try {
          covidDataModel = await covidDataRepository.fetchData();
          List<Countries>? countries=covidDataModel.countries;
          emit(CovidDataLoadedState(countries!));
        } catch (e) {
          emit(CovidDataErrorState(e.toString()));
        }
      }
    });
  }
}
