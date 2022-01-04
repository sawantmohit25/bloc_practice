import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/api_handle/bloc/api_handle_bloc.dart';

class ApiHandleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice app'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ApiHandleBloc>(context).add(FetchCovidData());
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child:
        BlocBuilder<ApiHandleBloc,ApiHandleState>(
          builder: (context, state) {
            if(state is CovidDataLoadingState){
              return CircularProgressIndicator();
            }
            else if(state is CovidDataLoadedState){
              return Text(state.countries[2].country!);
            }
            else if(state is CovidDataErrorState){
              return Text(state.message);
            }
            else{
              return Center(child:Text('Press the button to get the Data'));
            }            
          },
        )
        ),
    );
  }
}
