part of 'api_handle_bloc.dart';

@immutable
abstract class ApiHandleState {}

class ApiHandleInitial extends ApiHandleState {}

class CovidDataLoadingState extends ApiHandleState {}

class CovidDataLoadedState extends ApiHandleState {
  final List<Countries> countries;

  CovidDataLoadedState(this.countries);
}

class CovidDataErrorState extends ApiHandleState {
  final String message;

  CovidDataErrorState(this.message);
}
