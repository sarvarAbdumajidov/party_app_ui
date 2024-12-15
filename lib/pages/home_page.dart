import 'package:flutter/material.dart';
import 'package:party_app_ui/animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.5),
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.1),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeAnimation(
                delay: 2,
                child: Text(
                  'Find the best parties near you.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              FadeAnimation(
                delay: 3,
                child: Text(
                  'Let us find you a party for your interest',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w100),
                ),
              ),
              const SizedBox(height: 150),
              FadeAnimation(
                delay: 4,
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: _isLogin ? Colors.yellow.shade900 : Colors.red,
                  ),
                  child: Text(
                    _isLogin ? 'Start' : 'Google+',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
