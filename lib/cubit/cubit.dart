import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:techso/component.dart';
import 'package:techso/cubit/states.dart';
import 'package:techso/network/cache.dart';
import 'package:techso/network/dio.dart';



class Mycubit extends Cubit<tecsstates> {
  Mycubit() : super(tecsinitialstate());

  static Mycubit get(context) => BlocProvider.of(context);

  List<String>? gov=[
    'dak'.tr
  ];
  int? x;
  List<Widget> secon = [
    listclinics(),
    listdiagno(),
  ];


  List<Image> imag=[
    Image(image: AssetImage('images/ima1.jpg'),width: double.infinity,fit: BoxFit.cover,),
    Image(image: AssetImage('images/ima2.jpg'),width: double.infinity,fit: BoxFit.cover,),
    Image(image: AssetImage('images/ima3.jpg'),width: double.infinity,fit: BoxFit.cover,),

  ];
  void changesecon(int? a) {
    x = a;
    emit(tecschangestate());
  }




  void postdata(String? name, String? mail, String? ph, String? mes) {
    diohelp.postdata(URL: 'api/v1/send-contact-us', data: {
      'name': name,
      'email': mail,
      'phone': ph,
      'message': mes
    }).then((value) => print(value.data));
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

  int? valueeradio=1;
  void changeradio(value){
    valueeradio=value;
    emit(tecschangestate());

  }
}
