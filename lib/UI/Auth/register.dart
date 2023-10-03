import 'package:flutter/material.dart';
import 'package:rental_car/UI/Auth/login.dart';
import 'package:rental_car/UI/Widget/navbar.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    'Register',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Create an account',
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
              /*name*/ SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                height: 10,
              ),
              /*password*/ SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              /*register*/ Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 191, 255, .9),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    String name = nameController.text;
                    String email = emailController.text;
                    String password = passwordController.text;

                    // You can add your registration logic here

                    // Example of printing the input values
                    print('Name: $name');
                    print('Email: $email');
                    print('Password: $password');

                    // Navigasi ke halaman utama (ganti dengan halaman yang sesuai)
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const NavbarPage(), // Ganti dengan halaman utama yang sesuai
                      ),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Handle Google login here
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                'assets/icons/google.png'), // Ganti dengan path logo Google yang sesuai
                            height: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Login with Google',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Handle Facebook login here
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                'assets/icons/facebook.png'), // Ganti dengan path logo Facebook yang sesuai
                            height: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Login with Facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Handle phone login here
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(
                                'assets/icons/telepon.png'), // Ganti dengan path logo Telepon yang sesuai
                            height: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Login with Phone',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sudah punya akun? ',
                    style: TextStyle(),
                  ),
                  TextButton(
                    child: const Text('Login'),
                    onPressed: () {
                      // Navigate to the LoginPage when clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
