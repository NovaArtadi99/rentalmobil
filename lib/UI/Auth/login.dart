import 'package:flutter/material.dart';
import 'package:rental_car/UI/Auth/forgotpasswors.dart';
import 'package:rental_car/UI/Auth/register.dart';
import 'package:rental_car/UI/Widget/navbar.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  // Function to handle login button press
  void handleLogin(BuildContext context) {
    // Here, you can perform authentication and validation
    // If login is successful, navigate to the home page
    // For now, I'm just navigating to the home page without authentication
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const NavbarPage()), // Replace with your home page
    );
  }

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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Welcome back!',
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
                    labelText: 'Email or Username',
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
                  keyboardType: TextInputType.visiblePassword,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: const Text('Forgot password?'),
                    onPressed: () {
                      // Navigate to the ForgotPasswordPage when clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              /*login*/ Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 191, 255, .9),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    // Call the handleLogin function when the login button is pressed
                    handleLogin(context);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  '                                                                            ',
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  'or',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color:
                              Colors.white54, // Ganti dengan warna yang sesuai
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/icons/google.png'), // Add your Google logo image
                                height: 24, // Adjust the height as needed
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Login with Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors
                                      .black, // Ganti dengan warna teks yang sesuai
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color:
                              Colors.white54, // Ganti dengan warna yang sesuai
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/icons/facebook.png'), // Add your Facebook logo image
                                height: 24, // Adjust the height as needed
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Login with Facebook',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors
                                      .black, // Ganti dengan warna teks yang sesuai
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color:
                              Colors.white54, // Ganti dengan warna yang sesuai
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/icons/telepon.png'), // Add your Facebook logo image
                                height: 24, // Adjust the height as needed
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Login with Phone',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors
                                      .black, // Ganti dengan warna teks yang sesuai
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(),
                  ),
                  TextButton(
                    child: const Text('Sign up'),
                    onPressed: () {
                      // Navigate to the RegisterPage when clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
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
