import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/screens/homescreen.dart';
import 'package:flutter_chat_teste/screens/perfilscreen.dart';
import 'package:flutter_chat_teste/screens/splashscreen.dart';
import 'color_back.dart';
import 'custom_header.dart';
import 'drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Stack(
        children: <Widget>[
          ColorBack(),
          CustomHeader(),
          Container(
            padding: EdgeInsets.only(top: 154.0),
            child: ListView(
              padding: EdgeInsets.only(left:50.0,top:40.0),
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PerfilScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.person,
                    text: "Perfil",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.chat,
                    text: "Chat",
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SplashScreen()));
                  },
                  child:  DrawerTile(
                    icon: Icons.subdirectory_arrow_left_sharp,
                    text: "Sair",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}