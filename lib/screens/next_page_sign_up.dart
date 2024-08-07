import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../animation/fade.dart';
import '../../screens/otp.dart';
import '../../theme/colors/light_colors.dart';
import '../../widgets/active_project_card.dart';
import '../../widgets/my_text_field.dart';
import '../../widgets/task_column.dart';
import '../../widgets/top_container.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'calendar_page.dart';
import 'home_page.dart';
import 'otp_state.dart';

class NextPageSignUpPage  extends StatefulWidget {


  @override
  NextPageSignUpView createState() => NextPageSignUpView();
}

class NextPageSignUpView extends State<NextPageSignUpPage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
               Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background-4.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 130,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            ))),
                    Positioned(
                        left: 140,
                        width: 60,
                        height: 100,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            ))),
                    Positioned(
                        right: 40,
                        top: 0,
                        width: 60,
                        height: 140,
                        child: FadeAnimation(
                            1.8,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/logo-2.png'))),
                            ))),
                    Positioned(
                        child: FadeAnimation(
                            1.2,
                            Container(
                              margin: EdgeInsets.only(top: 60),
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: LightColors.kLightYellow,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )))
                  ],
                ),
              ),
              Container(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MyTextField(label: 'USERNAME'),
                          MyTextField(label: 'PASSWORD'),
                          MyTextField(label: 'CONFIRM PASSWORD'),
                          MyTextField(label: 'CONTACT NUMBER')
                        ],
                 ),
                      )),
              FadeAnimation(
                      1.3,
                      GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(colors: [
                                      Color.fromRGBO(255, 153, 51, .8),
                                      Color.fromRGBO(255, 153, 51, .5)
                                    ])),
                                child: Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Otp(email: 'hafizhkamus13@gmail.com',)),
                            );
                          }))
            ],
          ),
        ),
      ),
    );
  }
}