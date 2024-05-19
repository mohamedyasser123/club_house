import 'package:clubhouse_ui/widget/userprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class roomuserprofile extends StatelessWidget {
 final String name;
 final String imgurl;
 final bool ismuted;
 final bool isnew;
 final double size;

  const roomuserprofile({super.key, required this.name, required this.imgurl,  this.ismuted=false,  this.isnew=false,  this.size=100});


  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: userprofile(size: size, imgurl: imgurl),
          ),
         if(isnew)
          Positioned(
           bottom: 0,
            left: 0,
            child: Container(
             padding: EdgeInsets.all(4),
             decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
               BoxShadow(
                color: Colors.black26,
                offset: Offset(0,2),
                blurRadius: 4,

               )]

             ),
             child: Text(
              '🎉',
              style: TextStyle(fontSize: 20),

             ),
            ),
          ),
         if(ismuted)
          Positioned(
           bottom: 0,
           right: 0,
           child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                 BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,2),
                  blurRadius: 4,

                 )]

            ),
            child: Icon(CupertinoIcons.mic_slash_fill),

            ),
           ),
          
        ],
      ),
      Flexible(
        child: Text(
         name,
         overflow: TextOverflow.ellipsis,
        ),
      )
     ],

    );
  }
}
