import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/widgets/custom_drawer.dart';
import 'homescreen.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Perfil", style:
          TextStyle(
            color:  Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 26.0,
          ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: CircleAvatar(radius: 100,backgroundImage:
                AssetImage("assets/spiderman.jpg"),),
              ),
              Text(
                "Seus Dados: ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
           Container(
             padding:EdgeInsets.fromLTRB(50.0, 10.0, 10.0, 0.0),
             child: TextField(
               decoration: InputDecoration(
                   hintText: "Homem Aranha",
                   hintStyle: TextStyle(
                     fontSize: 20.0,
                   ),
                   enabledBorder:
                   OutlineInputBorder(borderSide: BorderSide(width: 1,
                       color: Colors.transparent)),
                   icon: Icon(Icons.mode_edit)),
             ),
           ),
              Container(
                padding:EdgeInsets.fromLTRB(50.0, 0.0, 10.0, 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "+55 11 9 9999-9999",
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                      ),
                      enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1,
                          color: Colors.transparent)),
                      icon: Icon(Icons.mode_edit)),
                ),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text("Atualizar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0, horizontal: 100.0,),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomeScreen()));
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}