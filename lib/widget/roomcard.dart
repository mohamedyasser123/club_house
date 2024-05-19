import 'package:clubhouse_ui/Models/Rooms.dart';
import 'package:clubhouse_ui/screens/Room_screen.dart';
import 'package:clubhouse_ui/widget/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class roomcard extends StatelessWidget {
  final Rooms room;

  const roomcard({super.key, required this.room});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
          fullscreenDialog: true,

          builder: (_)=> roomscreen(room: room),
      )),
      child: Padding(
        padding: const EdgeInsets.only(top:10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${room.club}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                Text(
                  '${room.name}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(

                        height: 100,
                        child: Stack(
                          children: [
                            userprofile(size: 48, imgurl:room.speakers[0].imageurl),
                            Positioned(
                              left: 28,
                                top: 28,
                                child: userprofile(size: 48, imgurl:room.speakers[1].imageurl)),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                              '${e.firstname}  ${e.lastname}'


                            ),),
                            Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text: '${room.speakers.length +room.Followerbyusers.length+room.others.length}',
                                ),
                                WidgetSpan(child: Icon(
                                  CupertinoIcons.person_fill,
                                  size: 18,
                                  color: Colors.grey,


                                )),
                                TextSpan(
                                  text: '/  ${room.speakers.length }',
                                ),
                                WidgetSpan(child: Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  size: 18,
                                  color: Colors.grey,


                                ))
                              ],
                              style: TextStyle(
                                color: Colors.grey[400]
                              )


                            ))
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
