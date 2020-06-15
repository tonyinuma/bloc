import 'dart:async';

class Validator{

  final validateEmail = StreamTransformer<String, String>
            .fromHandlers(
              handleData: (email, sink){
                if(email.contains('@')){
                  sink.add(email);
                }else{
                  sink.addError('Email invalido');
                }
              }
            );
  final validatePassword = StreamTransformer<String, String>
            .fromHandlers(
              handleData: (password, sink){
                if(password.length > 5){
                  sink.add(password);
                }else{
                  sink.addError('Contraseña invalida');
                }
              }
            );

}