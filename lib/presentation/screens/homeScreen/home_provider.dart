import 'package:flutter/cupertino.dart';
import 'package:flutter_base_project/remote/model/response_main.dart';
import 'package:flutter_base_project/remote/model/sign_in_body.dart';
import 'package:flutter_base_project/repository/data_manager.dart';

class HomeProvider with ChangeNotifier {
  var _dataManager = DataManager();
  int _count = 0;

  int get count => _count;

  void setCount(int value) {
    _count = value;
    notifyListeners();
  }

  Future<bool> signIn() {
    final SignInBody _signInBody = SignInBody();
    return _dataManager.signIn(_signInBody).then((response) {
      /*if (response.response.status == false) {
        if (response.response.errorCode == 401) {
          notifyListeners();
          return false;
        } else {
          notifyListeners();
          return false;
        }
      } else {
        notifyListeners();
        return true;
      }*/
      return true;
    }).catchError((e) {
      debugPrint("Got Error Other Than Http: $e");
    });
  }
}
