import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_app/practice_concepts_bloc/practice_concepts_bloc.dart';

class PracticeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Practice app'),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          BlocProvider.of<PracticeConceptsBloc>(context).add(ColorChange());
        },
        child:Icon(Icons.add),
      ),
      body:Center(
        child:
        BlocBuilder<PracticeConceptsBloc,PracticeConceptsState>(
          builder: (context, state) {
            if(state is ColorChangeState){
              return state.colorChange==true?Container( height:50,
                width:150,color:Colors.blue,):Container( height:50,
                width:150,color:Colors.red,);
            }
            else{
              return Center(child: Container(
                height:50,
                width:150,
                color:Colors.pink,));
            }            
          },
        )
        ),
    );
  }
}