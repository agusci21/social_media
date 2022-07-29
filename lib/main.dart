import 'package:flutter/material.dart';
import 'package:social_media/src/core/pre_validate_data.dart';
import 'src/core/aplication.dart';
//Debe ser responsive, debe utilizar BLoC, debe usar clean Code, debe Usar clean arquitecture

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreValidation.preValidateToken();
  runApp(const MyApp());
}
