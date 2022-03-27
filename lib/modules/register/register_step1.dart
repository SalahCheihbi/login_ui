import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_ui/modules/register/register_forum.dart';
import 'package:login_ui/shared/component/component.dart';
import 'package:login_ui/shared/style/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Property',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Select Your Property Type',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Please select your property type',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Property Tax Using App',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isActive = true;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _isActive ? defaultColor : HexColor("#F9F9F9"),
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.3),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/51_buildings.svg',
                            color: _isActive ? Colors.white : Colors.grey,
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Commercial',
                            style: TextStyle(
                                color: _isActive ? Colors.white : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isActive = false;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _isActive ? HexColor("#F9F9F9") : defaultColor,
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.3),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/05.svg',
                            color: _isActive ? Colors.grey : Colors.white,
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Residential',
                            style: TextStyle(
                                color: _isActive ? Colors.grey : Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: defaultButton(
                  background: defaultColor,
                  width: double.infinity,
                  text: 'Next Step',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterForm()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
