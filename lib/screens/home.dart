

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techso/component.dart';
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
            Mycubit.get(context).getdataapi();
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xff2a6bdb),
                  title: Text('TECS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                  actions: [

                    IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  ],

                ),
                bottomNavigationBar: Container(
                  color: Color(0xff2a6bdb),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                    child: GNav(
                      backgroundColor: Color(0xff2a6bdb),
                      color: Color(0xffffffff),
                      activeColor: Color(0xffffffff),
                      tabBackgroundColor: Color(0xff8eb1ec),
                      padding: EdgeInsets.all(16.0),
                      onTabChange: (index){
                        if(index==1){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                      }
                        else{
                          print('object');
                        }
                      },
                      tabs: const[
                        GButton(icon: Icons.home,
                          text:  'Home',),
                        GButton(icon: Icons.login,
                          text: 'Login',),
                        GButton(icon: Icons.settings,
                          text: 'Settings',),
                      ],
                    ),
                  ),
                ),
                body: homescreenf(),

              ),
            );
          }),

    );
  }
}
