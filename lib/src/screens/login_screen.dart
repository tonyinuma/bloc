import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Container(
    margin: EdgeInsets.all(25.0),
    child: Column(
      children: <Widget>[
        emailField(),
        passwordField(),
        Container(margin: EdgeInsets.only(top: 25.0),),
        submitButton()
      ],
    ),
 );
 }

 Widget emailField(){
   return TextField(
     keyboardType: TextInputType.emailAddress,
     decoration: InputDecoration(
       hintText: 'example@mail.com',
       labelText: 'Email',
       errorText: ''
     ),
   );
 }
 Widget passwordField(){
   return TextField(
     decoration: InputDecoration(
       labelText: 'Contraseña',
     ),
     obscureText: true,
   );
 }
 Widget submitButton(){
   return RaisedButton(
     child: Text('Enviar ♥'),
     onPressed: () {}
   );
 }
}