import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                'Login',
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
                                attribute: "username_email",
                                maxLines: 1,
                                decoration: InputDecoration(
                                  focusColor: Color(0xffcaae53),
                                  border: InputBorder.none,
                                  labelText: 'USERNAME / EMAIL',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Roboto Mono',
                                    fontSize: 16,
                                    letterSpacing: 1.5,
                                  ),
                                  icon: Icon(FontAwesomeIcons.user),
                                ),
                                validators: [
                                  FormBuilderValidators.required(),
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
                        'LOGIN',
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
                text: 'Don\'t have an account? Swipe right to ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'create an account. ',
                    style: TextStyle(
                      color: Color(
                        0xffcaae53,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '\nSwipe left if ',
                  ),
                  TextSpan(
                    text: 'Forgot Password.',
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
