import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:courses_desktop_app/models/feature/feature_model.dart';
// import controller
import 'package:courses_desktop_app/controllers/feature/feature_controller.dart';

class FeatureView extends StatelessWidget {
  const FeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    FeatureController viewController = FeatureController();
    return ChangeNotifierProvider<FeatureModel>(
      create: (context) => FeatureModel.instance(),
      child: Consumer<FeatureModel>(
        builder: (context, viewModel, child) {
          return Container(
              //TODO Add layout or component here
              );
        },
      ),
    );
  }
}