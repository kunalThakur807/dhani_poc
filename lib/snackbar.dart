import 'package:flutter/material.dart';


class SnackBarModel {
  final String message;
  final Color backgroundColor;
  final Duration duration;
  final Function? onActionPressed;

  SnackBarModel({
    required this.message,
    this.backgroundColor = Colors.green,
    this.duration = const Duration(seconds: 3),
    this.onActionPressed,
  });

  void showSnackBar(BuildContext context) {
  
      ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      duration: duration,
      
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    // Perform the action when the snackbar is shown
    if (onActionPressed != null) {
      onActionPressed!();
    }
  }
}
