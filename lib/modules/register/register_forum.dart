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

  String? value;
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
              const Text('Name'),
              const SizedBox(height: 10),
              defaultInputForm(),
              const SizedBox(height: 10),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(text: 'Enter your Address'),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
              const SizedBox(height: 10),
              defaultInputForm(),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(text: 'Enter your Address'),
                    TextSpan(text: '*', style: TextStyle(color: Colors.red)),
                  ])),
              const SizedBox(height: 10),
              defaultInputForm(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ssssss'),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultInputForm(),
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
                        const Text('ssssss'),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultInputForm(),
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
                        const Text('ssssss'),
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
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ssssss'),
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
                        const Text('Name'),
                        const SizedBox(height: 10),
                        defaultInputForm(),
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
                        const Text('Name'),
                        const SizedBox(height: 10),
                        defaultInputForm(),
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
}
