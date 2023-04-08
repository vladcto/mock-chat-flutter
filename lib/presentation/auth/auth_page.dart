import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:mock_chat_flutter/presentation/auth/registration_form.dart';
import 'package:mock_chat_flutter/presentation/auth/sign_in_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool signInForm = true;

  @override
  Widget build(BuildContext context) {
    final authHeight = MediaQuery.of(context).size.height * 0.45;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlue.shade200, Colors.lightBlue.shade300],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            height: authHeight,
            left: 0,
            bottom: 0,
            right: 0,
            child: PageTransitionSwitcher(
              duration: const Duration(seconds: 1),
              reverse: signInForm,
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                  SharedAxisTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.scaled,
                child: child,
              ),
              child: signInForm
                  ? _AuthCard(
                      key: const ValueKey("SignInForm"),
                      title: "Sign:",
                      child: SignInForm(
                          goToRegistration: () =>
                              setState(() => signInForm = false)),
                    )
                  : _AuthCard(
                      key: const ValueKey("RegistrationForm"),
                      title: "Registration:",
                      child: RegistrationForm(
                          goToLogin: () => setState(() => signInForm = true)),
                    ),
            ),
          )
        ],
      ),
    );
  }
}

class _AuthCard extends StatelessWidget {
  final Widget child;
  final String title;
  const _AuthCard({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, offset: Offset(0, -4), blurRadius: 16)
          ]),
      child: Center(
        child: FractionallySizedBox(
          widthFactor: .6,
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              child,
            ],
          )),
        ),
      ),
    );
  }
}
