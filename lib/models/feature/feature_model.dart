import 'package:flutter/material.dart';

enum FeatureModelStatus {
  Ended,
  Loading,
  Error,
}

class FeatureModel extends ChangeNotifier {
  FeatureModelStatus _status;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  FeatureModelStatus get status => _status;

  FeatureModel._()
      : _status = FeatureModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '';

  FeatureModel.instance()
      : _status = FeatureModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = FeatureModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = FeatureModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = FeatureModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FeatureModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = FeatureModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FeatureModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = FeatureModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FeatureModelStatus.Ended;
    notifyListeners();
  }
}