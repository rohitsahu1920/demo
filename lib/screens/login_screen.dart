import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller/login_controller.dart';
import 'package:testing/utils/color.dart';
import 'package:testing/utils/methods.dart';
import 'package:testing/utils/validator.dart';
import 'package:testing/widgets/app_primary_button.dart';
import 'package:testing/widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  final _loginController = Get.put(LoginController());

  final _formKey = GlobalKey<FormState>();

  _login() async {
    if (!isFormValid(_formKey)) return;

    _loginController.login();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(180),
                                  bottomRight: Radius.circular(180)),
                              color: colorPrimary,
                              shape: BoxShape.rectangle,
                            ),
                            height: 180,
                            width: Get.width,
                            child: Column(
                              children: [
                                SizedBox(height: 100,),
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          AppTextField(
                            controller: _loginController.emailTextController,
                            hintText: "E-Mail",
                            validator: Validator.validateEmail,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GetBuilder<LoginController>(
                            builder: (controller) {
                              return AppTextField(
                                controller:
                                    _loginController.passwordTextController,
                                hintText: "Password",
                                passwordVisible: controller.passwordVisible,
                                validator: Validator.validatePassword,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black,
                                  ),
                                  onPressed: controller.toggleVisible,
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: AppPrimaryButton(
                              text: "LOGIN",
                              onPressed: _login,
                              bgColor: colorPrimary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )))
        ],
      ),
    ));
  }
}
