import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techso/component.dart';
import 'package:techso/cubit/cubit.dart';
import 'package:techso/cubit/states.dart';
import 'package:techso/screens/home.dart';

class seconedscreen extends StatelessWidget {

  int? s;
  seconedscreen({this.s});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit,tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          Mycubit.get(context).changesecon(s);
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
            ),

            body: Mycubit.get(context).secon[Mycubit.get(context).x!],
          ));

        },
      ),
    );
  }
}
