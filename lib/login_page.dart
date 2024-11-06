import 'package:doc_app/homescreen/home_screen.dart';
import 'package:doc_app/sign_up_page.dart';
import 'package:flutter/material.dart';

class PatientLoginPage extends StatefulWidget {
  const PatientLoginPage({super.key});

  @override
  _PatientLoginPageState createState() => _PatientLoginPageState();
}

class _PatientLoginPageState extends State<PatientLoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _contactController = TextEditingController();
  final _passwordOrOtpController = TextEditingController();

  bool isUsingOTP = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                const SizedBox(height: 20),

                // Contact Input Field (Email or Mobile)
                TextFormField(
                  controller: _contactController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue[800],
                    ),
                    labelText: 'Email or Mobile Number',
                    labelStyle: TextStyle(color: Colors.blue[800]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[800]!),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email or mobile number';
                    }
                    // Additional email or mobile number validation can go here
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Toggle for OTP Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Use OTP instead of Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    Switch(
                      value: isUsingOTP,
                      onChanged: (value) {
                        setState(() {
                          isUsingOTP = value;
                          _passwordOrOtpController.clear();
                        });
                      },
                      activeColor: Colors.blue[800],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Password or OTP Input Field
                TextFormField(
                  controller: _passwordOrOtpController,
                  obscureText: !isUsingOTP, // Hide text if it's for password
                  keyboardType:
                      isUsingOTP ? TextInputType.number : TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue[800],
                    ),
                    labelText: isUsingOTP ? 'OTP' : 'Password',
                    labelStyle: TextStyle(color: Colors.blue[800]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[800]!),
                    ),
                    suffixIcon: isUsingOTP
                        ? TextButton(
                            onPressed: () {
                              // Add your OTP send functionality here
                            },
                            child: Text(
                              'Send OTP',
                              style: TextStyle(color: Colors.blue[800]),
                            ),
                          )
                        : null,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return isUsingOTP
                          ? 'Please enter the OTP'
                          : 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Add login logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    }
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 12),

                // Sign Up Button
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PatientSignUpPage()));
                    },
                    child: Text(
                      'Don\'t have an account? Sign Up',
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
