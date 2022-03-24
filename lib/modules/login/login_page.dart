import 'package:flutter/material.dart';
import 'package:login_ui/shared/component/component.dart';
import 'package:login_ui/shared/style/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // login page
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClippers(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: defaultColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'UDAC',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Text(
                  'Property & Tax Survey',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    width: 320,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              spreadRadius: 2,
                              blurRadius: 10)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: const [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Property tax Server',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Unique Door No. Easily Your Entire Property Tax Using App',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
