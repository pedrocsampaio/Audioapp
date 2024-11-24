import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import '../../DesignSystem/Components/InputField/input_field.dart';
import 'login_services.dart';

class LoginScreen extends StatelessWidget {
  // Controladores para os campos de texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
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
                  controller: emailController, // Adicionado
                  icon: SvgPicture.asset(
                    "../../assets/Icons/email_icon.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                const SizedBox(height: 20),

                // Campo de senha
                InputField(
                  hintText: "Password",
                  controller: passwordController, // Adicionado
                  icon: SvgPicture.asset(
                    "../../assets/Icons/lock.svg",
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
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Botão "Sign In"
                SizedBox(
                  width: double.infinity,
                  child: ActionButton(
                    text: "Sign In",
                    onPressed: () {
                      // Simular autenticação bem-sucedida antes da navegação
                      print("Sign In button clicked!");
                      LoginRouter.navigateToHome(context);
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
                          letterSpacing: 0.20,
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
