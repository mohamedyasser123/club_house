import 'dart:math';

import 'package:clubhouse_ui/Models/Rooms.dart';
import 'package:clubhouse_ui/data.dart';
import 'package:clubhouse_ui/widget/roomuserprofile.dart';
import 'package:clubhouse_ui/widget/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class roomscreen extends StatelessWidget {

   final Rooms room;

  const roomscreen({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        leadingWidth: 130,
        leading:TextButton(
          onPressed: () {},
          child: Text('Join Room'),
          style: TextButton.styleFrom(
            disabledForegroundColor: Colors.black.withOpacity(0.38),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.doc),
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
      ) ,
      body: Container(
       padding:EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${room.club}🏠'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                        
                      ),
                      Icon(CupertinoIcons.ellipsis)

                    ],
                  ),
                  Text('${room.name}'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),

                  )


                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverGrid.count(
                  crossAxisCount: 3,
                mainAxisSpacing: 20,
                children:
                  room.speakers.map((e) => roomuserprofile(
                      name: e.firstname,
                      imgurl: e.imageurl,
                      size: 66,
                      ismuted: Random().nextBool(),
                      isnew: Random().nextBool()
                  )).toList(),

              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'FollowedByUser',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),

                  ),

                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                childAspectRatio: .7,
                children:
                room.Followerbyusers.map((e) => roomuserprofile(
                    name: e.firstname,
                    imgurl: e.imageurl,
                    size: 45,

                    isnew: Random().nextBool()
                )).toList(),

              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'other',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),

                  ),

                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                childAspectRatio: .7,
                children:
                room.others.map((e) => roomuserprofile(
                    name: e.firstname,
                    imgurl: e.imageurl,
                    size: 45,

                    isnew: Random().nextBool()
                )).toList(),

              ),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 50))
          ],
        ),
        
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            TextButton(onPressed: (){},
                child:Text(
                  '✌️leave Room',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.grey,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)))
                ),

              ),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey

                    ),
                    padding: EdgeInsets.all(0),
                    child: Icon(CupertinoIcons.add,size: 35,),

                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey

                    ),
                    padding: EdgeInsets.all(0),
                    child: Icon(CupertinoIcons.hand_raised,size: 35,),

                  ),
                )
              ],

            )


          ],


        ),

      ),
    );
  }
}
