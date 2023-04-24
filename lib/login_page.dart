import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.login_rounded,
                size: 100,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 50,
              ),

              //Hello again
              const Text(
                'Hello Again !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              //username Textfield
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.grey,
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              //password textfield
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              //signin button

              Container(
                margin: const EdgeInsets.only(
                    left: 35, right: 35, top: 30, bottom: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple,
                ),
                child: const Center(
                  child: Text(
                    'LogIn',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              //not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Not a member ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    ' Register me ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
