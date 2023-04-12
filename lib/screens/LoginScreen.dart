
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component.dart';



class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {


  @override
  Widget build(BuildContext context) {
    var emailadd=TextEditingController();
    var pass=TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe7f3fc),
        appBar:AppBar(
          backgroundColor: Color(0xff2a6bdb),
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
    ),

    body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xff2a6bdb),borderRadius:BorderRadius.vertical(bottom: Radius.circular(15.0))),
                  height: 200.0,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('welcome'.tr,style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 25.0),),
                        Text('fruitful'.tr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                      ],
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('login'.tr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3.0,),
                        Text('ple'.tr,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 25.0,),
                        textfie(IC: Colors.white, FC: Color(0xffffffff), PrefI: Icon(Icons.email), HT: 'acc@comp.com', LT: 'ema'.tr, Scure: false,rad: 5.0,controller: emailadd,),
                        SizedBox(height: 25.0,),
                        textfie(IC: Colors.white, FC: Color(0xffffffff), PrefI: Icon(Icons.password), HT: '**********', LT: 'pas'.tr, Scure: true,rad: 5.0,controller: pass,),
                        SizedBox(height: 25.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Buttonfi('LOGIN', 55, double.infinity, 20, Color(0xff2a6bdb), Color(0xffffffff), (){}, 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
