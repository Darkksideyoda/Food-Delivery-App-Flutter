import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstOnboard extends StatelessWidget {
  const FirstOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.065),
                width: double.infinity,

                alignment: Alignment.center, // This is needed

                child: Image.asset(
                  'assets/images/Illustartion.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Find your Comfort",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01)),
                      Text(
                        "Food here",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.045)),
                      Text(
                        "Here You Can find a chef or dish for every",
                        style: TextStyle(
                            color: Color.fromARGB(255, 194, 191, 191),
                            fontWeight: FontWeight.normal,
                            fontSize: 10),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01)),
                      Text(
                        "taste and color.Enjoy!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 194, 191, 191),
                            fontWeight: FontWeight.normal,
                            fontSize: 10),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.07)),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Next'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(83, 232, 139, 1),
                            fixedSize: const Size(157, 57),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ],
                  ))
            ],
          )),
        ));
  }
}
