import 'package:sample_social_auth/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:sample_social_auth/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:sample_social_auth/ui/views/home/home_view.dart';
import 'package:sample_social_auth/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sample_social_auth/ui/views/facebook_auth/facebook_auth_view.dart';
import 'package:sample_social_auth/ui/views/google_auth/google_auth_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: FacebookAuthView),
    MaterialRoute(page: GoogleAuthView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
