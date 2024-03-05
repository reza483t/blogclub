import 'package:blogclub/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

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
              padding: const EdgeInsets.only(bottom: 16, top: 16),
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
                          Text(
                            'login'.toUpperCase(),
                            style: tabtextstyle,
                          ),
                          Text(
                            'sign up'.toUpperCase(),
                            style: tabtextstyle,
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
                      child: Column(
                        children: [
                          Text('Welcome back'),
                          Text('sign in with your account'),
                          TextField(
                            decoration:
                                InputDecoration(label: Text('Username')),
                          ),
                          TextField(
                            decoration:
                                InputDecoration(label: Text('Password')),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Login'.toUpperCase(),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Forget your password ?'),
                              TextButton(
                                onPressed: () {},
                                child: Text('Reset here'),
                              ),
                            ],
                          ),
                          Center(child: Text('OR SIGN IN WITH'),),
                          Row(children: [
                            
                          ],)
                        ],
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
