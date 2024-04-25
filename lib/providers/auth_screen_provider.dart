import 'package:apple_app/controllers/auth_controller.dart';
import 'package:apple_app/utils/custom_dialog.dart';
import 'package:flutter/material.dart';

class AuthScreenProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;
  TextEditingController get nameController => _nameController;

  String _splashStateType = 'authScreen';
  String get splashStateType => _splashStateType;

  void setSpalshState(String type) {
    _splashStateType = type;
    notifyListeners();
  }

  void startSignUp(BuildContext context) {
    if (_emailController.text.trim().isEmpty) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong', content: 'Please insert your email');
    } else if (_passwordController.text.trim().length < 6) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong',
          content: 'Password must be above 6 characters');
    } else if (_passwordController.text != _confirmPasswordController.text) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong', content: 'Password Missmatch');
    } else {
      CustomDialog.showLoader();
      AuthController.createUserAccount(_emailController.text,
          _passwordController.text, _nameController.text, context);
    }
  }

  void startSignIn(BuildContext context) {
    if (_emailController.text.trim().isEmpty) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong', content: 'Please insert your email');
    } else if (_passwordController.text.trim().length < 6) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong',
          content: 'Password must be above 6 characters');
    } else if (nameController.text.trim().isEmpty) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong', content: 'please insert your name');
    } else {
      CustomDialog.showLoader();
      AuthController.signInUser(
          _emailController.text, _passwordController.text, context);
    }
  }

  void clearField() {
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
    _nameController.clear;

    notifyListeners();
  }

  void startSendPasswordRestEmail(BuildContext context) {
    if (_emailController.text.trim().length <= 4) {
      CustomDialog.showDialog(context,
          title: 'Something went wrong', content: 'Please insert your email');
    } else {
      CustomDialog.showLoader();
      AuthController.sendPasswordResetEmail(_emailController.text, context);
    }
  }
}
