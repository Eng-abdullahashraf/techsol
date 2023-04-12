import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techso/component.dart';
import 'package:techso/cubit/states.dart';
import 'package:techso/network/cache.dart';
import 'package:techso/network/dio.dart';



class Mycubit extends Cubit<tecsstates> {
  Mycubit() : super(tecsinitialstate());

  static Mycubit get(context) => BlocProvider.of(context);

  int? x;
  List<Widget> secon = [
    listclinics(),
    listdiagno(),
  ];

  void changesecon(int? a) {
    x = a;
    emit(tecschangestate());
  }

  void getdataapi() {
    diohelp.getdata(URL: 'api/v1/settings').then((value) {
      List? dataset = value.data['data']['settings']['clinics'];
         cache.putdata('zeko', json.encode(dataset) );
      // print(cache.getdata('dataset'));
    }).catchError((error) {
      error.toString();
    });
    emit(tecsgetdatafromapi());
  }

  int? screennum=0;
  List<Widget> homescreens=[
    homescreenf(),
    settings()
  ];
  void changescreen( int a){
    screennum=a;
    emit(tecschangestate());
  }

  List? clinicsdata;
  void getdatatcache(){
    String? map=cache.getdata('zeko');
    clinicsdata=json.decode(map!);

  }

  void cacher(){
    cache.putdata( 'datase' , 'shepo');
    emit(tecschangestate());
  }
}
