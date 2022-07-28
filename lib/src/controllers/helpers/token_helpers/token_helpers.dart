
import 'package:shared_preferences/shared_preferences.dart';

abstract class TokenHelper{
  static void saveToken (String token) async {
    final sharedPreferencies = await SharedPreferences.getInstance();
    sharedPreferencies.setString('token', token);
    readAndLoadToken();
  }
  static Future<void> readAndLoadToken() async {
    final sharedPreferencies = await SharedPreferences.getInstance();
    token = sharedPreferencies.getString('token');
  }
  static void deleteToken()async{
    final sharedPreferencies = await SharedPreferences.getInstance();
    sharedPreferencies.remove('token');
  }
  static String? token;
}