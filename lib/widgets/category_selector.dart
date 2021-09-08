import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategorySelectorState();
  }

}

class _CategorySelectorState extends State<CategorySelector>{
  int selectedIndex=0;
  List<String>categories=['Mensagens','Online','Grupos','Contatos'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    height:70.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (BuildContext context,int index){

          return GestureDetector(
            onTap: (){
              setState((){
                selectedIndex=index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Text(categories[index],style: TextStyle(
                color: (index==selectedIndex)?Colors.white:Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 1.2,
              ),),
            ),
          );
      }),
    );
  }

}