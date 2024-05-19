import 'package:clubhouse_ui/data.dart';
import 'package:clubhouse_ui/widget/roomcard.dart';
import 'package:clubhouse_ui/widget/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse_ui/main.dart';
import 'package:clubhouse_ui/constans.dart';

import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.envelope_open),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.calendar),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: userprofile(size: 34.0, imgurl:currntuser.imageurl),
            ),
          )
        ],
      ),
      body:Stack(

        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            children: [
              ...allrooms.map((e) => roomcard(room:e)),],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration:BoxDecoration(
                gradient: LinearGradient(
                 begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context)
                      .scaffoldBackgroundColor.withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor

                    ])) ,),),
          Positioned(
            bottom: 35,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add,
                size: 28,
                color: Colors.white,
              ),
              label: Text(
                'Start Room',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).primaryColor, padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          )
        ],
      ) ,
    );
  }
}

