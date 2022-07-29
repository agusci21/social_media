import 'package:http/http.dart' as http;
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'package:social_media/src/core/enviroment.dart';

class PreValidation {
  static Future<void> preValidateToken() async {
    await TokenHelper.readAndLoadToken();
    if (TokenHelper.token == null) return;
    final response = await http
        .get(Uri.parse('${Enviroment.authUrl}/${TokenHelper.token!}'));
    if (response.statusCode != 200) TokenHelper.deleteToken();
  }
}
