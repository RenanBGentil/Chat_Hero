import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/models/message_model.dart';
import 'package:flutter_chat_teste/screens/chatscreen.dart';

class RecentChats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RecentChatsState();
  }

}

class _RecentChatsState extends State<RecentChats>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),
              topLeft: Radius.circular(30))
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                topLeft: Radius.circular(30)),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context,index){
            Message chat=chats[index];
            return GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_){
                return ChatScreen(user:chat.sender);
              }));
              },
              child: Container(
                margin: EdgeInsets.only(top: 5.0,right: 20.0,bottom: 5.0),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: chat.unread?Color(0XFFFFEFEE):Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(radius: 30,backgroundImage:
                        AssetImage(chat.sender.imageUrl),),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(chat.sender.name,style:
                            TextStyle(fontSize: 14.0,fontWeight:
                            FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 10,),
                            Container(width:MediaQuery.of(context).size.width*.45,
                                child: Text(chat.text,
                                  style: TextStyle(fontSize: 12.0,fontWeight:
                                  FontWeight.w600,color: Colors.blueGrey),
                                overflow: TextOverflow.ellipsis,
                                )),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(chat.time,style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,fontSize: 15.0),
                        ),
                        SizedBox(height: 5.0,),
                        chat.unread?Container(width:40,height:20,
                            alignment:Alignment.center,decoration:BoxDecoration
                              (color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Text('Novo',style: TextStyle(
                                color: Colors.white,fontSize: 12.0,fontWeight:
                            FontWeight.bold),)):Text(''),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}