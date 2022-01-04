import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/math_compute_bloc/bloc/math_compute_bloc.dart';

class MathComputeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Math Compute'),
      ),
      floatingActionButton:Row(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:(){
              BlocProvider.of<MathComputeBloc>(context).add(IncrementEvent());
            },
            child:Icon(Icons.add),
          ),
          SizedBox(width:5),
          FloatingActionButton(
            onPressed:(){
              BlocProvider.of<MathComputeBloc>(context).add(DecrementEvent());
            },
            child:Icon(Icons.remove),
          ),
        ],
      ),
      body:Center(
        child:
        BlocBuilder<MathComputeBloc,MathComputeState>(
          builder: (context, state) {
            if(state is IncrementState){
              return Text('The value is '+state.sum.toString());
            }
            else if(state is DecrementState){
              return Text('The value is '+state.sum.toString());
            }
            else{
              return Center(child:Text('The value is 0'));
            }            
          },
        )
        ),
    );
  }
}