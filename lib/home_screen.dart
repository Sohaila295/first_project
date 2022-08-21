// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<int> i = [
    3,
    5,
    4,
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //main axis alignment : start or (top) (default)
    // cross axis alignment :center (default)
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: const Icon(
            Icons.menu, //لو الكتابة معوجة تبقي ستاتيكس
          ), //نحطلها ويدجيت
          title: const Text('First app'),
          actions: [

            IconButton(
              onPressed: onNotification,
              icon: const Icon(
                  Icons.notification_important
              ),)
            , IconButton(onPressed: () {
              ('hello');
            },
                icon: const Text('hello'))
          ],
        ),
        body:Column(
          children: [
            Container(
              width: 200.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0)
                  )
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment:Alignment.bottomCenter ,
                  children:
                  [
                    const Image(
                        image: NetworkImage(

                          'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'
                        ),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                 Container(
                   color: Colors.black.withOpacity(0.7),
                   padding:const  EdgeInsets.all(50.0),

                   child: const Text(
                     'Flower',
                     textAlign:TextAlign.center ,
                     style: TextStyle(
                       fontSize: 20.0,
                       color: Colors.white
                     ),
                   ),
                 ),
                  ],
                ),
              ),
            ),
          ],
        )

    );
  }
//when notification button clicked
  void onNotification() {
    ('notification clicked');
  }
}