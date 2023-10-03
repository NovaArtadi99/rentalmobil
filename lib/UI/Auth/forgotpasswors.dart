import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgotPasswordPage extends StatelessWidget {
  var emailController = TextEditingController();

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Reset your password',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              /*email*/ SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              /*reset password*/ Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 191, 255, .9),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    String email = emailController.text;

                    // You can add your password reset logic here

                    // Example of printing the input value
                    print('Email: $email');
                  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
