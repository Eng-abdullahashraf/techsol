import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:techso/network/cache.dart';
import 'package:techso/screens/Seconedscreen.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

Widget textfie(
    {@required Color? IC,
    @required Color? FC,
    @required Widget? PrefI,
    @required String? LT,
    @required String? HT,
    required bool Scure,
    @required double? rad,
    @required TextEditingController? controller}) {
  return Container(
    decoration:
        BoxDecoration(color: FC, borderRadius: BorderRadius.circular(rad!)),
    child: TextFormField(
        decoration: InputDecoration(
            iconColor: IC,
            fillColor: FC,
            prefixIcon: PrefI,
            labelText: LT,
            hintText: HT),
        obscureText: Scure,
        controller: controller),
  );
}

Widget Buttonfi(
  @required String? tex,
  @required double? hei,
  @required double? wid,
  @required double? tfont,
  @required Color? bcolor,
  @required Color? tcolor,
  @required VoidCallback? onta,
  @required double? decoration,
) =>
    GestureDetector(
      onTap: onta,
      child: Container(
        decoration: BoxDecoration(
            color: bcolor!, borderRadius: BorderRadius.circular(decoration!)),
        height: hei,
        alignment: Alignment.center,
        width: wid,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            tex!,
            style: TextStyle(
                color: tcolor, fontSize: tfont, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

Widget doctorcon() => BlocProvider(
    create: (BuildContext Context) => Mycubit(),
    child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2a6bdb),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff788489),
                      offset: Offset.zero,
                      blurRadius: 10.0)
                ],
              ),
              width: double.infinity,
              height: 175,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 25.0, left: 8.0),
                    child: Image(image: AssetImage('images/doctors.png')),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 180, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'clinics'.tr,
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'ge'.tr,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => seconedscreen(s: 0)));
            },
          );
        }));

Widget diagnostics() => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfff58cad),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff788489),
                      offset: Offset.zero,
                      blurRadius: 10.0)
                ],
              ),
              width: double.infinity,
              height: 175,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 25.0, left: 8.0),
                    child: Image(image: AssetImage('images/diagno.png')),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 180, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'medlab'.tr,
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'book'.tr,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => seconedscreen(s: 0)));
              //

              //   Mycubit.get(context).getdatatcache();
              //  final String? datase=cache.getdata('zeko');
              //print(datase);
            },
          );
        },
      ),
    );

Widget consult() => Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Color(0xffe4e8e8), offset: Offset.zero, blurRadius: 10.0)
        ],
      ),
      width: 200,
      height: 170,
      child: Column(children: [
        Image(image: AssetImage('images/diagno.png'), width: 70, height: 70),
        Text(
          'data',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'datadatadatadatadatadatadatadatadata',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        )),
      ]),
    );

Widget listconsult() => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              height: 180,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => consult(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 15.0,
                      ),
                  itemCount: 10),
            ),
          );
        },
      ),
    );

Widget homescreenf() => SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: doctorcon(),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: diagnostics(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'teb'.tr,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                child: listconsult(),
              ),
            ],
          )),
        ),
      ]),
    );

Widget clinics(data) => Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  color: Color(0xffbfc5c9),
                  offset: Offset.zero)
            ],
          ),
          width: double.infinity,
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Color(0xff2a6bdb),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/mohamed.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                // '${clinic['name']}',
                                '${data['name']}',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                // '${clinic['name']}',
                                '...............',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff1F8AC7),
                          ),
                          Expanded(
                            child: Text(
                              // '${clinic['name']}',
                              '${data['address']}  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['phone']}',
                            'price'.tr,
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          Text(
                            //'${clinic['phone']}',
                            '${data['disclosure_price']}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['email']}',
                            '${data['phone']}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['email']}',
                            '${data['time_form']}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            //'${clinic['email']}',
                            '${data['time_to']}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );

Widget diagno() => Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  color: Color(0xffbfc5c9),
                  offset: Offset.zero)
            ],
          ),
          width: double.infinity,
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Color(0xfff58cad),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/mohamed.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                // '${clinic['name']}',
                                'معمل نجلاء الخولى',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                // '${clinic['name']}',
                                'أخصائي نساء وتوليد',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff1F8AC7),
                          ),
                          Expanded(
                            child: Text(
                              // '${clinic['name']}',
                              'المنزلة الموقف القديم بجوار محلات كشري التابعي  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['phone']}',
                            'price'.tr,
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          Text(
                            //'${clinic['phone']}',
                            '80',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['email']}',
                            '01211030844',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Color(0xff1F8AC7),
                          ),
                          Text(
                            //'${clinic['email']}',
                            '12:00ص حتي 8:00م',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );

Widget listclinics() => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          Mycubit.get(context).getdataapi();
          Mycubit.get(context).getdatatcache();
          List? list = Mycubit.get(context).clinicsdata;
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => clinics(list![index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10.0,
                      ),
                  itemCount: list!.length),
            ),
          );
        },
      ),
    );

Widget listdiagno() => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => diagno(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10.0,
                      ),
                  itemCount: 10),
            ),
          );
        },
      ),
    );
Widget rowsetting(@required String? name,@required IconData icon,@required Color colors)=> Container(
  width: double.infinity,
  height: 35,
  color: Color(0xffffffff),
  child:   Row(
    children: [
      Icon(icon,color: colors),
      Text(name!.tr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
    ],
  ),
);
Widget settings() => BlocProvider(
      create: (BuildContext Context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Text('welcome'.tr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                InkWell(
                  child: rowsetting('lang',Icons.language,Color(0xff2a6bdb)),
                  onTap: (){},
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: rowsetting('emailus',Icons.email,Color(0xff2a6bdb)),
                  onTap: (){},
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: rowsetting('callus',Icons.call,Color(0xff2a6bdb)),
                  onTap: (){},
                ),

              ],
            ),
          );
        },
      ),
    );
