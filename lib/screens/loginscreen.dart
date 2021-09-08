import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/widgets/color_back.dart';
import 'package:flutter_chat_teste/widgets/enter_with.dart';
import 'package:flutter_chat_teste/widgets/facebook_button.dart';
import 'package:flutter_chat_teste/widgets/google_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();


final _focusSenha = FocusNode();
final _emailController= TextEditingController();
final _senhaController = TextEditingController();


class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            ColorBack(),
            Padding(
              padding: EdgeInsets.all(22.0),
              child: ListView(
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset("assets/logo.png",
                            fit: BoxFit.cover,
                            width: 200.0,
                            height: 90.0,),
                        ),
                        const SizedBox(height: 50.0,),
                        TextField(
                          onSubmitted: (_) {
                            FocusScope.of(context).requestFocus(
                                _focusSenha);
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 16.0),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        TextField(
                          onSubmitted: (_) {
                            FocusScope.of(context).unfocus();
                          },
                          focusNode: _focusSenha,
                          controller: _senhaController,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Senha",
                            hintStyle: TextStyle(
                                fontSize: 16.0),
                          ),
                        ),
                        const SizedBox(height: 50.0,),
                        // ignore: deprecated_member_use
                        FlatButton(
                          onPressed:(){
                            if(
                            _emailController.text.isNotEmpty &&
                                _senhaController.text.isNotEmpty)
                            {
                              _onSuccess();
                            }
                            else  if (_emailController.text.isEmpty &&
                                _senhaController.text.isEmpty)
                            {
                              _onFail();
                            }},
                          child: Text("Entrar",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 132.0,),
                          hoverColor: Colors.black,
                        ),
                        const SizedBox(height: 20.0,),
                        GestureDetector(
                          onTap: () {
                            if (_emailController.text.isEmpty) {
                              // ignore: deprecated_member_use
                              _scaffoldKey.currentState!.showSnackBar(
                                  SnackBar(
                                    backgroundColor: Color.fromARGB(255, 4, 125, 141),
                                    content: Text(
                                      "Insira seu e-mail para recupareção",),
                                    duration: Duration(seconds: 2,),
                                  ));
                            }
                            else {
                              SnackBar(
                                content: Text("Confira seu e-mail",),
                                duration: Duration(seconds: 2,),
                              );
                            }
                          },
                          child: Text("Esqueci minha senha",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        EnterWith(),
                        FacebookButton(),
                        GoogleButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSuccess(){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen()));
  }

  void _onFail(){
    // ignore: deprecated_member_use
    _scaffoldKey.currentState!.showSnackBar( SnackBar(
      content: Text("Falha ao entrar ",),
      duration: Duration(seconds: 2,),
      backgroundColor: Color.fromARGB(255, 255, 50, 255),
    ));
  }
}