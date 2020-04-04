import 'package:financial_app/shared_widgets/custom_button_widget.dart';
import 'package:financial_app/shared_widgets/custom_textfield_widget.dart';
import 'package:financial_app/utils/util.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailReg = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final util = Util();
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 24),
            child: Text(
              'Create Account',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
                Text(
                  'Hello there, sign up to continue!',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 30),
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomTextFieldWidget(
                            description: 'Name',
                            textEditingController: nameController,
                            label: 'Enter your name ',
                            inputType: TextInputType.text,
                            onFieldSubmitted: (String value) {},
                            onValidate: (String value) {
                              if (value.isEmpty) {
                                return 'Name field cannot be Empty.';
                              }
                              return null;
                            },
                            isObscure: false),
                        SizedBox(height: 25),
                        CustomTextFieldWidget(
                            description: 'Email Address',
                            textEditingController: nameController,
                            label: 'Enter your email ',
                            inputType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {},
                            onValidate: (String value) {
                              if (value.isEmpty) {
                                return 'Email field cannot be Empty.';
                              }
                              if (!emailReg.hasMatch(value)) {
                                return 'Email is incorrect.';
                              }
                              return null;
                            },
                            isObscure: false),
                        SizedBox(height: 25),
                        CustomTextFieldWidget(
                            description: 'Password',
                            textEditingController: nameController,
                            label: 'Enter your password ',
                            inputType: TextInputType.emailAddress,
                            onFieldSubmitted: (String value) {},
                            onValidate: (String value) {
                              if (value.isEmpty) {
                                return 'Password field cannot be Empty.';
                              }
                              if (value.length < 8) {
                                return 'Your password should be more than 8 characters.';
                              }
                              return null;
                            },
                            isObscure: false),
                        SizedBox(height: 30),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runAlignment: WrapAlignment.center,
                          children: <Widget>[
                            Checkbox(
                                activeColor: util.mainColor,
                                value: isTermsAccepted,
                                onChanged: (bool isChecked) {
                                  setState(() {
                                    isTermsAccepted = !isTermsAccepted;
                                  });
                                }),
                            RichText(
                                text: TextSpan(
                                    text:
                                        'By creating an account, you agree to our ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                    children: [
                                  TextSpan(
                                      text: '\nTerms & Conditions',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              color: util.mainColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600))
                                ]))
                          ],
                        ),
                        SizedBox(height: 30),
                        CustomButtomWidget(
                            text: 'Sign up',
                            isHasIcon: false,
                            textColor: Colors.white,
                            backgroundColor: isTermsAccepted
                                ? util.mainColor
                                : util.mainColor.withOpacity(.3),
                            onTap: () {}),
                        SizedBox(height: 30),
                        Center(
                          child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                  text: 'Already have an account? ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                        text: 'Sign in',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: util.mainColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600))
                                  ])),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
