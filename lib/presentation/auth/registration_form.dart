import 'package:flutter/material.dart';
import 'package:mock_chat_flutter/data/auth/firebase_auth_service.dart';
import 'package:mock_chat_flutter/locator.dart';

import '../messages_page.dart';

class RegistrationForm extends StatefulWidget {
  final Function goToLogin;
  const RegistrationForm({Key? key, required this.goToLogin}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
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
            controller: _nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
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
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: errorMessage == null
                  ? null
                  : Text(
                      errorMessage!,
                      style: const TextStyle(color: Colors.red),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
            child: ElevatedButton(
                onPressed: () async {
                  var authService = getIt<FirebaseAuthService>();
                  var res = await authService.createUser(
                      password: _passwordController.text,
                      email: _emailController.text);
                  res.when(
                    invalidEmail: () => setErrorMessage("Invalid email"),
                    usedEmail: () => setErrorMessage("Email used"),
                    succesful: (_) => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const MessagesPage(),
                      ),
                    ),
                  );
                },
                child: const Text("Create account")),
          ),
          Center(
            child: TextButton(
              onPressed: () => widget.goToLogin(),
              child: const Text(
                "Already have account?",
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void setErrorMessage(String message) => setState(() {
        errorMessage = message;
      });
}
