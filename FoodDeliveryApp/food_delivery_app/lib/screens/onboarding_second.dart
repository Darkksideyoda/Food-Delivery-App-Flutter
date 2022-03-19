import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondOnboard extends StatelessWidget {
  const SecondOnboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                      'assets/images/IllustrationSecondBoard.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                Text(
                  "Food Ninja is Where Your",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  "Comfort Food Lives",
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
                  "Enjoy a fast and smooth delivery at",
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
                  "your doorstep",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 194, 191, 191),
                      fontWeight: FontWeight.normal,
                      fontSize: 10),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                ElevatedButton(
                  onPressed: () {},
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
