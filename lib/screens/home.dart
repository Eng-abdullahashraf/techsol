

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techso/cubit/cubit.dart';
import 'package:techso/cubit/states.dart';
import 'package:techso/screens/LoginScreen.dart';

class homescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext Context)=>Mycubit(),
      child: BlocConsumer<Mycubit,tecsstates>(
          listener: (context, state) {},
          builder: (context , state){
            return SafeArea(
              child: Scaffold(
                body:
                Mycubit.get(context).homescreens[Mycubit.get(context).screennum!],
                drawer:  Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        child: Text('TECS',style: TextStyle(fontWeight: FontWeight.bold)),
                        decoration: BoxDecoration(color: Color(0xff2a6bdb)),
                      ),
                      ListTile(title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold)),
                        leading: Icon(Icons.home),
                        onTap: (){
                          Mycubit.get(context).changescreen(0);
                        },),
                      ListTile(title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold)),
                        leading: Icon(Icons.settings),
                        onTap: (){
                        Mycubit.get(context).changescreen(1);
                        },),
                      ListTile(title: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
                        leading: Icon(Icons.login),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                        },)
                    ],
                  ),
                ),
              ),
            );
          }),

    );
  }
}
