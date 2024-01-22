import 'package:flutter/material.dart';
import 'package:sample_social_auth/ui/views/google_auth/google_auth_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GoogleResponseView extends ViewModelWidget<GoogleAuthViewModel> {
  const GoogleResponseView({super.key});

  @override
  Widget build(BuildContext context, viewModel) {
    return viewModel.googleResponse != null
        ? Column(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(viewModel.googleResponse?.photoURL ?? ""),
              ),
              Text("Email: ${viewModel.googleResponse?.email}"),
              Text("Name: ${viewModel.googleResponse?.name}"),
              Text("Auth Token : ${viewModel.googleResponse?.authToken}")
            ],
          )
        : const SizedBox.shrink();
  }
}
