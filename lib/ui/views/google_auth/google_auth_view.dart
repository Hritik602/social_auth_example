import 'package:flutter/material.dart';
import 'package:sample_social_auth/ui/views/home/widgets/goole_response_container.dart';
import 'package:stacked/stacked.dart';

import 'google_auth_viewmodel.dart';

class GoogleAuthView extends StackedView<GoogleAuthViewModel> {
  const GoogleAuthView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GoogleAuthViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const GoogleResponseView(),
                ElevatedButton(
                    onPressed: () {
                      viewModel.onClickGoogle();
                    },
                    child: const Text("Google")),
                ElevatedButton(
                    onPressed: () {
                      viewModel.onClickSignOut();
                    },
                    child: const Text("Sign out"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  GoogleAuthViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GoogleAuthViewModel();
}
