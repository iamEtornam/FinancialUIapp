import 'package:financial_app/shared_widgets/custom_button_widget.dart';
import 'package:financial_app/shared_widgets/custom_textfield_widget.dart';
import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';

import 'create_account_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final util = Util();
  final usernameController = TextEditingController();
  final paswordControler = TextEditingController();
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 24),
            child: Text(
              'Sign In',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome Back',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 10),
                Text(
                  'Hello there, sign in to continue!',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 30),
                Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        CustomTextFieldWidget(
                            description: 'Username or Email',
                            textEditingController: usernameController,
                            label: 'Enter your username or email ',
                            inputType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {},
                            onValidate: (String value) {
                              if (value.isEmpty) {
                                return 'Field cannot be Empty.';
                              }
                              return null;
                            },
                            isObscure: false),
                        SizedBox(height: 20),
                        CustomTextFieldWidget(
                            description: 'Password',
                            textEditingController: paswordControler,
                            label: 'Enter your password',
                            inputType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {
                              if (usernameController.text.length != 0 &&
                                  value.length != 0) {
                                isValid = true;
                              } else {
                                isValid = false;
                              }
                              setState(() {});
                            },
                            onValidate: (String value) {
                              if (value.isEmpty) {
                                return 'Password field cannot be Empty.';
                              }
                              return null;
                            },
                            isObscure: true),
                        SizedBox(height: 40),
                        IgnorePointer(
                          ignoring: !isValid,
                          ignoringSemantics: !isValid,
                          child: CustomButtomWidget(
                              text: 'Sign in',
                              isHasIcon: false,
                              textColor: Colors.white,
                              backgroundColor: isValid
                                  ? util.mainColor
                                  : util.mainColor.withOpacity(.3),
                              onTap: () {
                                print(isValid);
                                if (_formKey.currentState.validate()) {
                                } else {}
                              }),
                        ),
                      ],
                    )),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccountPage()));
                  },
                  child: Center(
                    child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account? ',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            children: [
                          TextSpan(
                              text: 'Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: util.mainColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))
                        ])),
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
