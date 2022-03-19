import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/screens/onboarding_second.dart';

class FirstOnboard extends StatelessWidget {
  const FirstOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double PaddingCondition = 0;
    print("Device Height:" + ScreenHeight.toString());
    if (780 <= ScreenHeight && ScreenHeight < 830) {
      PaddingCondition = 55.0;
    } else if (730 <= ScreenHeight && ScreenHeight < 780) {
      PaddingCondition = 65.0;
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    width: double.infinity,

                    alignment: Alignment.center, // This is needed

                    child: Image.asset(
                      'assets/images/Illustartion.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text(
                  "Find your Comfort",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  "Food here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  "Here You Can find a chef or dish for every",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 194, 191, 191),
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  "taste and color.Enjoy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 194, 191, 191),
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondOnboard()));
                  },
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      onPrimary: Colors.black,
                      primary: Color.fromRGBO(83, 232, 139, 1),
                      fixedSize: const Size(157, 57),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                )
              ],
            ),
          )),
        ));
  }
}
