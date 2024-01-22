import 'package:stacked/stacked.dart';
import 'package:social_auth_pkg/src/user-model/google_response.dart';

import 'package:social_auth_pkg/src/google-auth/google_auth.dart';

class GoogleAuthViewModel extends BaseViewModel {
  GoogleResponse? _googleResponse;
  GoogleResponse? get googleResponse => _googleResponse;
  setGoogleResponse(GoogleResponse response) {
    _googleResponse = response;
    notifyListeners();
  }

  onClickGoogle() async {
    GoogleResponse? response = await GoogleAuth().signInWithGoogle();
    setGoogleResponse(response);
  }

  onClickSignOut() async {
    bool value = await GoogleAuth().signOut();
    if (value) {
      _googleResponse = null;
    }
    notifyListeners();
  }
}
