import 'package:blogclub/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // fit: BoxFit.cover این تیکه کند به این معنا است که شما بیاید و عکسی که در پروژه ایمپورت کردید را فیت با صفحه کاربر بکنید
          Positioned.fill(
              child: Assets.img.background.splash.image(fit: BoxFit.cover)),
              Center(child: Assets.img.icons.logo.svg(width: 100) ,)
        ],
      ),
    );
  }
}
