import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/screens/after_login.dart';
import 'package:testing/utils/common.dart';

class LoginController extends GetxController{

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  bool passwordVisible = false;

  void toggleVisible() {
    passwordVisible = !passwordVisible;
    update();
  }

  void login() async{

    if(emailTextController.text == "rohit@gmail.com" && passwordTextController.text == "123" && passwordTextController.text.length > 6){
      Get.to(AfterLogin());
    } else{
      Common.toast("Not working");
    }
  }
}