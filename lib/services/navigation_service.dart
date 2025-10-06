import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> navigate(Widget widget) async {
    final navigator = navigatorKey.currentState;
    if (navigator != null) {
      await navigator.push(
        MaterialPageRoute(builder: (context) => widget),
      );
    }
  }

  Future<void> navigateReplace(Widget widget) async {
    final navigator = navigatorKey.currentState;
    if (navigator != null) {
      await navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => widget),
      );
    }
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }

  Future<void> showDialogWidget(Widget widget) async {
    final context = navigatorKey.currentContext;
    if (context != null) {
      await showAdaptiveDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => widget,
      );
    }
  }

  void showSnackbar(String text) {
    final context = navigatorKey.currentContext;
    if (context == null) return;

    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
      ),
      showCloseIcon: true,
      shape: const StadiumBorder(),
      backgroundColor: const Color(0xFF2D3194),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
