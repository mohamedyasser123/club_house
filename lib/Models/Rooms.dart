import 'package:clubhouse_ui/Models/Users.dart';

class Rooms{
 final String club;
 final String name;
 final List<User> speakers;
 final List<User>others;
 final List<User>Followerbyusers;

 const Rooms({
   required this.club,
   required this.name,
   required this.speakers,
   required this.others,
   required this.Followerbyusers
  });


}