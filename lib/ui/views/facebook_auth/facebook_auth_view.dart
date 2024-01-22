import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'facebook_auth_viewmodel.dart';

class FacebookAuthView extends StackedView<FacebookAuthViewModel> {
  const FacebookAuthView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FacebookAuthViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Facebook Sign In")),
            ElevatedButton(
                onPressed: () {}, child: const Text("Facebook Sign Out"))
          ],
        ));
  }

  @override
  FacebookAuthViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FacebookAuthViewModel();
}
