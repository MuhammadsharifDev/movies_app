import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/widget/global_bottomstyle_widget.dart';
import 'package:movies_app/core/widget/global_textformfiled_widget.dart';
import 'package:movies_app/core/widget/style_text_model.dart';
import 'package:movies_app/features/auth/login/mixin_page.dart';
import 'package:movies_app/features/auth/login/widget/change_page_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignupPageState();
}



class _SignupPageState extends State<LoginPage>with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15141F),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 200.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ma'lumotingizni kiriting";
                    }
                    return null;
                  },
                  decoration: InputDecorationModel.items(
                    hintext: 'Enter your email',
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Ma'lumotingizni kiriting";
                    }
                    return null;
                  },
                  decoration: InputDecorationModel.items(
                    hintext: 'Enter your password',
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                ElevatedButton(
                  style: BottomStyle.items(),
                  onPressed: () {},
                  child: StyleTextModel.items(text: 'Login', size: 15),
                ),
                SizedBox(
                  height:35.h,
                ),
                const ChangeSignupBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
