// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:login_ui/shared/component/component.dart';
import 'package:login_ui/shared/style/colors.dart';
import 'package:lottie/lottie.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final item = ['test1', 'test2', 'test3', 'test4'];
  final item2 = ['Rabat', 'Casablanca', 'Marrakesh', 'Tanger'];
  String? value;
  String? value2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Entre Details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name of Owner',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              defaultInputForm(
                type: TextInputType.text,
              ),
              const SizedBox(height: 10),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                    TextSpan(text: 'Enter Address'),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
              const SizedBox(height: 10),
              defaultInputForm(type: TextInputType.streetAddress),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                    TextSpan(text: 'House Number'),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
              const SizedBox(height: 10),
              defaultInputForm(type: TextInputType.number),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Street',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultInputForm(type: TextInputType.text),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Locality',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultInputForm(type: TextInputType.text),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'City',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 40,
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(10),
                            ),
                            value: value2,
                            items: item2.map(buildCityItem).toList(),
                            onChanged: (value) => setState(() {
                              this.value2 = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'State',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 40,
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(10),
                            ),
                            value: value,
                            items: item.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(() {
                              this.value = value;
                            }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('District',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        const SizedBox(height: 10),
                        defaultInputForm(type: TextInputType.name),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pincode',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        defaultInputForm(
                          type: TextInputType.number,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: defaultButton(
                  background: defaultColor,
                  width: double.infinity,
                  text: 'Next Step',
                  function: () {
                    showDialog(
                        context: context,
                        builder: (context) => Dialog(
                                child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Lottie.asset('assets/84332-check.json',
                                      repeat: false, height: 120, width: 100),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SimpleDialogOption(
                                    onPressed: () {
                                      Navigator.pop(context, 'Accepted');
                                    },
                                    child: const Text('Accepted'),
                                  ),
                                ),
                              ],
                            )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(item),
    );
  }

  DropdownMenuItem<String> buildCityItem(String item2) {
    return DropdownMenuItem<String>(
      value: item2,
      child: Text(item2),
    );
  }
}
