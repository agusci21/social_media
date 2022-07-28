import 'package:flutter/material.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'src/core/aplication.dart';
//Debe ser responsive, debe utilizar BLoC, debe usar clean Code, debe Usar clean arquitecture

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TokenHelper.readAndLoadToken();
  runApp(const MyApp());
}
