import 'package:be_spoke/core/utils/extensions.dart';
import 'package:be_spoke/features/home/controller/dashboard.dart';
import 'package:flutter/cupertino.dart';
import '../../../core/utils/utils.dart';
import '../controller/login.dart';

class LoginView extends StatelessView<Login, LoginController> {
  const LoginView(LoginController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: _body(context));
  }

  Widget _body(context) {
    return Padding(
      padding: REdgeInsets.all(16.0),
      child: Form(
        key: state.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Provide your login details'
                .toText(fontSize: 20.sp, fontWeight: FontWeight.w800),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 60.h,
              child: TextFormField(
                controller: state.emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter email',
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0.r),
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 16.0.h),
            TextFormField(
              controller: state.passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0.r),
                  ),
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(builder: (context) => const Dash()),
                );
              },
              child: 'Login'.toText(),
            ),
          ],
        ),
      ),
    );
  }
}
