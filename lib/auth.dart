import 'package:blogclub/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTab = 0;
  static const int signupTab = 1;
  int selectedTabIndex = loginTab;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final tabtextstyle = TextStyle(
      color: themeData.colorScheme.onPrimary,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: Assets.img.icons.logo.svg(width: 120),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: themeData.colorScheme.primary,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTabIndex = loginTab;
                              });
                            },
                            child: Text(
                              'login'.toUpperCase(),
                              style: tabtextstyle.apply(
                                  color: selectedTabIndex == loginTab
                                      ? Colors.white
                                      : Colors.white54),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedTabIndex = signupTab;
                              });
                            },
                            child: Text(
                              'sign up'.toUpperCase(),
                              style: tabtextstyle.apply(
                                  color: selectedTabIndex == signupTab
                                      ? Colors.white
                                      : Colors.white54),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          color: themeData.colorScheme.surface),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
                          child: selectedTabIndex == loginTab
                              ? _Login(themeData: themeData)
                              : _SignUp(themeData: themeData),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text('sign in with your account',
            style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8)),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Username')),
        ),
        const PasswordTextFields(),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width, 60),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)))),
            child: Text(
              'Login'.toUpperCase(),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forget your password ?'),
            const SizedBox(
              width: 8,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Reset here'),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            'OR SIGN IN WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/icons/Google.png',
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Image.asset('assets/img/icons/Facebook.png', width: 36, height: 36),
            const SizedBox(
              width: 24,
            ),
            Image.asset('assets/img/icons/Twitter.png', width: 36, height: 36),
          ],
        )
      ],
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to blog club',
          style: themeData.textTheme.headline4,
        ),
        const SizedBox(
          height: 8,
        ),
        Text('please enter your information',
            style: themeData.textTheme.subtitle1!.apply(fontSizeFactor: 0.8)),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Fullname')),
        ),
        const TextField(
          decoration: InputDecoration(label: Text('Username')),
        ),
        const PasswordTextFields(),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width, 60),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)))),
            child: Text(
              'sign up'.toUpperCase(),
            )),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text(
            'OR SIGN UP WITH',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.img.icons.google.image(
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.facebook.image(width: 36,height: 36),
            const SizedBox(
              width: 24,
            ),
            Assets.img.icons.twitter.image(width: 36,height: 36),
          ],
        )
      ],
    );
  }
}

class PasswordTextFields extends StatefulWidget {
  const PasswordTextFields({
    super.key,
  });

  @override
  State<PasswordTextFields> createState() => _PasswordTextFieldsState();
}

class _PasswordTextFieldsState extends State<PasswordTextFields> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
          label: const Text('Password'),
          suffix: InkWell(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Text(
                obscureText ? 'Show' : 'Hide',
                style: TextStyle(
                    fontSize: 14, color: Theme.of(context).colorScheme.primary),
              ))),
    );
  }
}
