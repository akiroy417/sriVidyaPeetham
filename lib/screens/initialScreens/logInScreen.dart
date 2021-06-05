import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:srividyapeetham/screens/initialScreens/HomeScreen.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'homeScreenOld.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  late String verificationId;

  bool showLoading = false;

  final formKey =  GlobalKey<FormState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: showLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? _getMobileForm(context)
              : _getOtpForm(context),
    );
  }

  Widget _getMobileForm(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Image.asset(
                  'assets/icons/e61c8b111f4efe1b22e771b36f7932c3.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sri Ubhaya Bharathi Vidya Peetham',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // border: OutlineInputBorder(),
                    labelText: 'Mobile NO',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid Mobile NO';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(290, 40),
                  backgroundColor: Color(0XFF821710),
                ),
                child: Text('Submit'),
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      showLoading = true;
                    });

                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: _phoneController.text,
                      verificationCompleted: (phoneAuthCredential) async {
                        setState(() {
                          showLoading = false;
                        });
                      },
                      verificationFailed: (verificationFailed) async {
                        setState(() {
                          showLoading = false;
                        });
                        // ignore: deprecated_member_use
                        scaffoldKey.currentState!.showSnackBar(
                          SnackBar(
                            content: Text('${verificationFailed.message}'),
                          ),
                        );
                      },
                      codeSent: (verificationId, resendingToken) async {
                        setState(() {
                          showLoading = false;
                          currentState =
                              MobileVerificationState.SHOW_OTP_FORM_STATE;
                          this.verificationId = verificationId;
                        });
                      },
                      codeAutoRetrievalTimeout: (verificationId) async {},
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Or continue as a Guest'),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Click Here'),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => HomeScreenOld(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getOtpForm(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _otpController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Enter OTP',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid OTP';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(290, 40),
                  backgroundColor: Colors.redAccent,
                ),
                child: Text('Verify'),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    PhoneAuthCredential phoneAuthCredential =
                        PhoneAuthProvider.credential(
                      verificationId: verificationId,
                      smsCode: _otpController.text,
                    );

                    sigInWithPhoneAuthCredential(phoneAuthCredential);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sigInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
    } on Exception {
      setState(() {
        showLoading = false;
      });

      // ignore: deprecated_member_use
      scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text('e'),
        ),
      );
      // TODO
    }
  }
}
