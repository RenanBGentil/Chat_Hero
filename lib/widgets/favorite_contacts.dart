import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/models/message_model.dart';
import 'package:flutter_chat_teste/screens/chatscreen.dart';

class FavoriteContacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Contatos Favoritos",style: TextStyle(color:
                Colors.blueGrey,fontSize: 16.0,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: favorite.length,
                itemBuilder: (BuildContext context,int index){
              return GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_){
                  return ChatScreen(user:favorite[index]);
                }));
                },
                child: Padding(padding: EdgeInsets.all(8),
                  child:
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                          backgroundImage: AssetImage(favorite[index].imageUrl),
                      ),
                      SizedBox(height: 6.0,),
                      Text(favorite[index].name,style: TextStyle(color:Colors.blueGrey,
                          fontWeight: FontWeight.bold,fontSize: 14.0),)
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }

}