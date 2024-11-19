import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Components/InputField/input_field.dart';
import '../../Components/Buttons/ActionButton/action_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Assets/Images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Título
                const SizedBox(height: 50), 
                const Text(
                  "Audio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 51.05,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.64,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "It's modular and designed to last",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                    letterSpacing: 0.20,
                  ),
                ),
                const SizedBox(height: 247),

                // Campo de e-mail
                InputField(
                  hintText: "Email",
                  icon: SvgPicture.asset(
                    "../../Assets/Icons/email_icon.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                const SizedBox(height: 20),

                // Campo de senha
                InputField(
                  hintText: "Password",
                  icon: SvgPicture.asset(
                    "../../Assets/Icons/lock.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                const SizedBox(height: 20),

                // "Forgot Password"
                GestureDetector(
                  onTap: () {
                    print("Forgot Password clicked!");
                  },
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgot Password',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.10,
                      letterSpacing: 0.20,
                      ),
                    )
                  ),
                ),
                const SizedBox(height: 32),

                // Botão "Sign In"
                SizedBox(
                  width: double.infinity,
                  child: ActionButton(
                    text: "Sign In",
                    onPressed: () {
                      print("Sign In button clicked!");
                    },
                  ),
                ),
                const SizedBox(height: 24),

                // "Didn't have any account? Sign Up here"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Didn't have any account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: 0.20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Sign Up clicked!");
                      },
                      child: const Text(
                        " Sign Up here",
                        style: TextStyle(
                          color: Color(0xFF0ACF83),
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.10,
                          letterSpacing: 0.20, // Verde
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
