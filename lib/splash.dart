import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen()));
    });
    super.initState();
  }
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
