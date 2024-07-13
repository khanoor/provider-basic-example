import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class AuthProvider extends ChangeNotifier {
  bool _isloading = false;
  bool get isloading => _isloading;

  void isLoading(bool value) {
    _isloading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    try {
      isLoading(true);
      Response response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        isLoading(false);
        if (kDebugMode) {
          print(response.body);
        }
      } else {
        isLoading(false);
        if (kDebugMode) {
          print(response.statusCode);
        }
      }
    } catch (e) {
      isLoading(false);
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
