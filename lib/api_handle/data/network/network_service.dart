import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_app/api_handle/data/model/covid_data_model.dart';
class NetworkService{
  //Instead of if-else you can also use try-catch
  Future<CovidDataModel> fetchData() async {
    final url='https://api.covid19api.com/summary';
    final response =await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final data=jsonDecode(response.body); 
      return CovidDataModel.fromJson((data));
    }
    else{
      throw Exception('unable to perform request');
    }
  }

}