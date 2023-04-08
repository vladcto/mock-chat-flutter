import 'package:flutter/material.dart';
import 'package:mock_chat_flutter/data/auth/firebase_auth_service.dart';
import 'package:mock_chat_flutter/locator.dart';

class SignInForm extends StatefulWidget {
  final Function goToRegistration;
  const SignInForm({Key? key, required this.goToRegistration}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: "E-mail"),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) =>
                RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(_emailController.text)
                    ? null
                    : "Invalid email",
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(labelText: "Password"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forget password?",
              ),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: errorMessage == null
                ? null
                : Text(
                    errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: ElevatedButton(
                onPressed: () async {
                  var authService = getIt<FirebaseAuthService>();
                  var res = await authService.logIn(
                      password: _passwordController.text,
                      email: _emailController.text);
                  res.when(
                    invalidEmail: () => setErrorMessage("Invalid email"),
                    wrongCredentials: () => setErrorMessage("Check credentials"),
                    succesful: (_) => setErrorMessage("Succes"),
                  );
                },
                child: const Text("Log in")),
          ),
          Center(
            child: TextButton(
              onPressed: () => widget.goToRegistration(),
              child: const Text(
                "Doesn't have account?",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setErrorMessage(String message) => setState(() {
        errorMessage = message;
      });

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
