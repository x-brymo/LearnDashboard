import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:courses_desktop_app/models/feature/feature_model.dart';

class FeatureController {
  FeatureController();
  
  void getter(BuildContext context) {
    FeatureModel viewModel = Provider.of<FeatureModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    FeatureModel viewModel = Provider.of<FeatureModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    FeatureModel viewModel = Provider.of<FeatureModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    FeatureModel viewModel = Provider.of<FeatureModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}