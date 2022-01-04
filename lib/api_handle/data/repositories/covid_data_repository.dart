import 'package:practice_app/api_handle/data/model/covid_data_model.dart';
import 'package:practice_app/api_handle/data/network/network_service.dart';

class CovidDataRepository{
   NetworkService networkService=NetworkService();
   
  Future<CovidDataModel>fetchData() async {
    return await networkService.fetchData();
  }
}