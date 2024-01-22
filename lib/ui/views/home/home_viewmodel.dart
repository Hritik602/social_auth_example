import 'package:flutter/material.dart';
import 'package:sample_social_auth/app/app.bottomsheets.dart';
import 'package:sample_social_auth/app/app.dialogs.dart';
import 'package:sample_social_auth/app/app.locator.dart';
import 'package:sample_social_auth/app/app.router.dart';
import 'package:sample_social_auth/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:social_auth_pkg/src/user-model/google_response.dart';
import 'package:social_auth_pkg/src/google-auth/google_auth.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void onTapGoogleSignIn() {
    _navigationService.navigateToGoogleAuthView();
  }

  void onTapFacebookSignIn() {
    _navigationService.navigateToFacebookAuthView();
  }
}
