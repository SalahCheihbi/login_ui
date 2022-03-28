import 'package:flutter/material.dart';
import 'package:login_ui/modules/register/register_step1.dart';
import 'package:login_ui/shared/component/component.dart';
import 'package:login_ui/shared/style/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FocusNode _focusNode;
  late FocusNode _focusNode2;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode2 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                        padding: EdgeInsets.only(top: 90),
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
                          height: MediaQuery.of(context).size.height / 2,
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
                            padding: const EdgeInsets.all(20.0),
                            child: Column(children: [
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                'Property tax Server',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Unique Door No. Easily Your Entire Property Tax Using App',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: defaultFromField(
                                  function: _requestFocus,
                                  focusNode: _focusNode,
                                  autofocus: true,
                                  colors: _focusNode.hasFocus
                                      ? defaultColor
                                      : Colors.grey,
                                  type: TextInputType.name,
                                  prefix: Icons.person_outline_outlined,
                                  label: 'User Name',
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: defaultFromField(
                                    function: _requestFocus2,
                                    focusNode: _focusNode2,
                                    autofocus: true,
                                    colors: _focusNode2.hasFocus
                                        ? defaultColor
                                        : Colors.grey,
                                    type: TextInputType.text,
                                    prefix: Icons.lock_open,
                                    isPassword: true,
                                    label: 'Password'),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: defaultButton(
                                    text: 'Sign In Now',
                                    background: defaultColor,
                                    function: () {}),
                              )
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.black38),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()));
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _requestFocus2() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }
}
