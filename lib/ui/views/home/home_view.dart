import 'package:flutter/material.dart';
import 'package:sample_social_auth/ui/views/home/widgets/goole_response_container.dart';
import 'package:stacked/stacked.dart';
import 'package:provider/provider.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
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
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
