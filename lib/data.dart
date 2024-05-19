import 'package:clubhouse_ui/Models/Rooms.dart';
import 'package:clubhouse_ui/Models/Users.dart';

const User currntuser=User(
firstname: 'mohamed',
  lastname: 'yasser',
  imageurl: 'https://plus.unsplash.com/premium_photo-1679079456068-2ddd4423aa14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
);
const List<User> alluser=[
  User(
      firstname: 'mohamed',
      lastname: 'yasser',
      imageurl: 'https://images.unsplash.com/photo-1593697909683-bccb1b9e68a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80'
  ),
  User(
      firstname: 'mido',
      lastname: 'yasser',
      imageurl: 'https://images.unsplash.com/photo-1581368087049-7034ed0d1e6f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'
  ),
  User(
      firstname: 'moh',
      lastname: 'yasser',
      imageurl: 'https://images.unsplash.com/photo-1655715640307-03045118def8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'
  ),
  User(
      firstname: 'moh',
      lastname: 'ahmed',
      imageurl: 'https://plus.unsplash.com/premium_photo-1679079456068-2ddd4423aa14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
  ),
  User(
      firstname: 'ahmed',
      lastname: 'yasser',
      imageurl: 'https://plus.unsplash.com/premium_photo-1679079456068-2ddd4423aa14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
  ),
  User(
      firstname: 'mohamed',
      lastname: 'yasser',
      imageurl: 'https://plus.unsplash.com/premium_photo-1679079456068-2ddd4423aa14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
  ),



];
final List<Rooms> allrooms = [
  Rooms(
    club: 'ugyi',
    name: 'ggkjlgfu',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'dsagfffg',
    name: 'ggkjlgfufnjfhbfjldnfnbjbdjnghfdbkjfgjsdnhi;sdgljbsdkndhgbjaskbsvfdv',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'jfdhdfhfdh',
    name: 'fgjfkdgshrdfhsdjhspjdouhsaksdhihasknjijsdhksgnohgdjhfndfbdfnjlbudzbljdzugbjdgbSD',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'ugyi',
    name: 'ggkjlgfujtndhfsnmdfjdnhifhjfsdbfkagngonjgnvbnjndndakgfjnjdfkbjvdbhfjoafdghziiusnjhdsbkjhfddhsgdgifgyudguydsgiagftsf',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'ugyi',
    name: 'ggkjlgfu',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'ugyi',
    name: 'ggkjlgfu',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),
  Rooms(
    club: 'ugyi',
    name: 'ggkjlgfu',
    speakers: (List<User>.from(alluser)..shuffle()).getRange(0, 3).toList(),
    Followerbyusers: List<User>.from(alluser)..shuffle(),
    others: List<User>.from(alluser)..shuffle(),
  ),

];



