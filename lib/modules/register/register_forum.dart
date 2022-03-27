import 'package:flutter/material.dart';
import 'package:login_ui/shared/component/component.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

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
                        Text('ssssss'),
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
                        Text('ssssss'),
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
                        Text('ssssss'),
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
                        Text('ssssss'),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultInputForm(),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
