import 'package:flutter/material.dart';

class SystemViewModel extends ChangeNotifier {
  String sessionId = "";
  String vanUrl = "";
  bool _isError = false;
  String _errorMessage = "";
  String _successMessage = "";
  bool _isSuccess = false;
  bool _showCircularLoading = false;
  bool _closeAllFilter = false;

  bool get closeAllFilter => _closeAllFilter;
  setCloseAllFilter(bool val) {
    _closeAllFilter = val;
    notifyListeners();
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        _closeAllFilter = false;
        notifyListeners();
      },
    );
  }

  setSessionIdHardCode(String session) {
    sessionId = session;

    // RpcHelper.serviceInfo.headers!["sessionId"] = sessionId;

    notifyListeners();
  }

  setSessionId(String session, String vanUrl) {
    // print("setSessionId");
    sessionId = session;
    this.vanUrl = vanUrl;

    // RpcHelper.serviceInfo.headers!["sessionId"] = sessionId;

    notifyListeners();
  }

  bool get showCircularLoading => _showCircularLoading;
  setShowCircularLoading(bool val) {
    _showCircularLoading = val;
    notifyListeners();
  }

  bool get isError => _isError;
  setIsError(bool val) {
    _isError = val;
    notifyListeners();
  }

  String get errorMessage => _errorMessage;
  setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  Future<void> resetErrorMessage() async {
    await Future.delayed(const Duration(seconds: 4), () {
      _errorMessage = "";
      _isError = false;
      notifyListeners();
    });
  }

  bool get isSuccess => _isSuccess;
  setIsSuccess(bool val) {
    _isSuccess = val;
    notifyListeners();
  }

  String get successMessage => _successMessage;
  setsuccessMessage(String message) {
    _successMessage = message;
    notifyListeners();
  }

  Future<void> resetsuccessMessage() async {
    await Future.delayed(const Duration(milliseconds: 300), () {
      _successMessage = "";
      _isSuccess = false;
      notifyListeners();
    });
  }
}
