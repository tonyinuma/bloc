import 'dart:async';
import 'package:bloc/src/bloc/validator.dart';

class Bloc with Validator{

  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose(){
    _emailController.close();
    _passwordController.close();
  }

}

final bloc = Bloc();