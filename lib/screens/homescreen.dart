import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/widgets/category_selector.dart';
import 'package:flutter_chat_teste/widgets/custom_drawer.dart';
import 'package:flutter_chat_teste/widgets/favorite_contacts.dart';
import 'package:flutter_chat_teste/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }

}
class _HomeScreenState extends State<HomeScreen>
{
  late bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     drawer: CustomDrawer(),
     backgroundColor: Theme.of(context).primaryColor,
     appBar: AppBar(
       title: !isSearching? Text("Chats",style: TextStyle(
           fontSize: 28.0,
           fontWeight: FontWeight.bold),
       )
           : TextField(
             decoration: InputDecoration(
               icon: Icon(Icons.search, color: Colors.white),
               hintText: "Pesquisar ...",
               hintStyle: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
               ),
               enabled: false,
             ),
           ),
            elevation: 0.0,
       actions: <Widget>[
         isSearching ?
             IconButton(onPressed: (){
               setState(() {
                 this.isSearching = false;
               });
             },
                 icon: Icon(Icons.cancel))
             : IconButton(icon: Icon(Icons.search,),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: (){
                setState(() {
                this.isSearching = true;
              });
         })
       ],
     ),

     body: Column(
       children: <Widget>[
         CategorySelector(),
         Expanded(child: Container(
           decoration: BoxDecoration(
             color: Theme.of(context).accentColor,
             borderRadius: BorderRadius.only(topLeft:
             Radius.circular(30),topRight: Radius.circular(30)
             )
           ),
           child: Column(
             children: <Widget>[
               FavoriteContacts(),
               RecentChats(),
             ],
           ),
         ))
       ],
     ),
   );
  }

}