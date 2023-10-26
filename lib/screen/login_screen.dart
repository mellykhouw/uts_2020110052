import 'package:flutter/material.dart';
import 'package:uts_2020110052/screen/product_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 75,
            vertical: 200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/shopping_logo.png",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              const Text(
                "Welcome to KlontongShop",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'username',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'password',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      height: 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
