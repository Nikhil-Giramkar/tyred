import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key key,
  }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto Mono',
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                FormBuilder(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(18, 10, 18, 20),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x11000000),
                          offset: Offset(0, 20),
                        ),
                      ]),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 0.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 12, bottom: 12),
                              child: FormBuilderTextField(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                ),
                                attribute: "email",
                                maxLines: 1,
                                decoration: InputDecoration(
                                  focusColor: Color(0xffcaae53),
                                  border: InputBorder.none,
                                  labelText: 'EMAIL',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Roboto Mono',
                                    fontSize: 16,
                                    letterSpacing: 1.5,
                                  ),
                                  icon: Icon(FontAwesomeIcons.envelope),
                                ),
                                validators: [
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.email(),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, bottom: 12),
                              child: FormBuilderTextField(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                ),
                                maxLines: 1,
                                attribute: "username",
                                decoration: InputDecoration(
                                  focusColor: Color(0xffcaae53),
                                  border: InputBorder.none,
                                  labelText: 'USERNAME',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Roboto Mono',
                                    fontSize: 16,
                                    letterSpacing: 1.5,
                                  ),
                                  icon: Icon(FontAwesomeIcons.user),
                                ),
                                validators: [
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.minLength(6),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: FormBuilderTextField(
                                obscureText: true,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                ),
                                attribute: "password",
                                decoration: InputDecoration(
                                  focusColor: Color(0xffcaae53),
                                  border: InputBorder.none,
                                  labelText: 'PASSWORD',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Roboto Mono',
                                    fontSize: 16,
                                    letterSpacing: 1.5,
                                  ),
                                  icon: Icon(
                                    Icons.lock_outline,
                                    size: 30,
                                  ),
                                ),
                                validators: [
                                  FormBuilderValidators.required(),
                                  FormBuilderValidators.minLength(7),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                elevation: 5,
                shape: StadiumBorder(),
                fillColor: Color(0xff37474F),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16, left: 160),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      color: Color(0xffFFE082),
                      icon: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Color(0xffFFE082),
                        size: 18,
                      ),
                    )
                  ],
                ),
                onPressed: () {
                  if (_formKey.currentState.saveAndValidate()) {
                    print(_formKey.currentState.value);
                  }
                },
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .65,
            child: RichText(
              textAlign: TextAlign.center,
              softWrap: true,
              text: TextSpan(
                text: 'Already have an account? \nSwipe left to ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'login. ',
                    style: TextStyle(
                      color: Color(
                        0xffcaae53,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'By creating an account, you agree to our ',
                  ),
                  TextSpan(
                    text: 'Terms of Service ',
                    style: TextStyle(
                      color: Color(
                        0xffcaae53,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                  ),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                      color: Color(
                        0xffcaae53,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
