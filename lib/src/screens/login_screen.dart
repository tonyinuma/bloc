import 'package:flutter/material.dart';
import 'package:bloc/src/bloc/bloc.dart';

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
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'example@email.com',
              labelText: 'Email',
              errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail,
          );
        }
    );
   
 }
  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){
      return TextField(
          decoration: InputDecoration(
            labelText: 'Contraseña',
            errorText: snapshot.error
          ),
          obscureText: true,
          onChanged: bloc.changePassword,
        );
      }
    );
  }
 Widget submitButton(){
   return RaisedButton(
     child: Text('Enviar ♥'),
     onPressed: () {}
   );
 }
}