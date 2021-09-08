import 'package:flutter_chat_teste/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({required this.sender,required this.time,required this.text,required this.isLiked,required this.unread});
}

//You Current User
final User currentUser=User(
  id:0,
  name: 'Current User',
  imageUrl: 'assets/images/user0.png'
);

final User user1=User(id:1,name:'Viúva Negra',imageUrl: 'assets/black.jpg');
final User user2=User(id:2,name:'Hulk',imageUrl: 'assets/hulk.jpg');
final User user3=User(id:3,name:'Capitão América',imageUrl: 'assets/captain.jpg');
final User user4=User(id:4,name:'Homem de Ferro',imageUrl: 'assets/ironman.jpg');
final User user5=User(id:5,name:'Thor',imageUrl: 'assets/thor.jpg');

List<User>favorite=[user1,user2,user3,user4,user5];

List<Message>chats=[
  Message(sender:user1,time:'13:30',text: 'Ei, como está indo? O que você fez hoje?',isLiked:false,unread:true),
  Message(sender:user2,time:'13:30',text: 'Ei, como está indo? O que você fez hoje?',isLiked:false,unread:false),
  Message(sender:user3,time:'13:30',text: 'Ei, como está indo? O que você fez hoje?',isLiked:true,unread:true),
  Message(sender:user4,time:'13:30',text: 'Ei, como está indo? O que você fez hoje?',isLiked:false,unread:true),
  Message(sender:user5,time:'13:30',text: 'Ei, como está indo? O que você fez hoje??',isLiked:false,unread:true),
];

//Example Messages
List<Message>messages=[
  Message(sender:currentUser,time:'13:30',text: 'Os Vingadores',isLiked:false,unread:true),
  Message(sender:user1,time:'13:00',text: 'E qual filme assistiu?',isLiked:true,unread:true),
  Message(sender:currentUser,time:'12:30',text: 'O do shopping perto de casa',isLiked:false,unread:true),
  Message(sender:user1,time:'12:00',text:'Legal, qual cinema?',isLiked:false,unread:true),
  Message(sender:currentUser,time:'11:00',text:'Estou bem. Hoje eu fui ai cinema',isLiked:false,unread:true),
  Message(sender:user1,time:'10:30',text: 'Ei, como está indo? O que você fez hoje?',isLiked:true,unread:true),

];