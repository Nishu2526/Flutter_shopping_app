import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bottomnavigation/mainScreen/cart.dart';
import 'package:bottomnavigation/widgets/google_face.dart';
import 'package:flutter/material.dart';

const textColor = [
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.purple,
];

const textStyle =
    TextStyle(fontFamily: 'Acme', fontSize: 50, fontWeight: FontWeight.bold);

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/inapp/bg2.jpg'), fit: BoxFit.fill)),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText('Welcome'.toUpperCase(),
                          textStyle: textStyle, colors: textColor),
                      ColorizeAnimatedText('Duck Shop'.toString(),
                          textStyle: textStyle, colors: textColor),
                    ]),
                const SizedBox(
                  height: 140,
                  width: 200,
                  child: Image(image: AssetImage('images/inapp/logo1.png')),
                ),
                SizedBox(
                  height: 80,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Acme',
                        color: Colors.lightBlueAccent),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText('PURCHASE'),
                        RotateAnimatedText('SHOP'),
                        RotateAnimatedText('DUCK STORE'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50))),
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'Supplier Only',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AnimatedLogo(controller: _controller),
                                YellowButton(
                                    label: 'log In',
                                    onPressed: () {},
                                    width: MediaQuery.of(context).size.width *
                                        0.25),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: YellowButton(
                                      label: 'Sign Up',
                                      onPressed: () {},
                                      width: MediaQuery.of(context).size.width *
                                          0.25),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: YellowButton(
                                  label: 'log In',
                                  onPressed: () {},
                                  width:
                                      MediaQuery.of(context).size.width * 0.25),
                            ),
                            YellowButton(
                                label: 'Sign Up',
                                onPressed: () {},
                                width:
                                    MediaQuery.of(context).size.width * 0.25),
                            AnimatedLogo(controller: _controller),
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white38.withOpacity(0.1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GoogleFacebookLogin(
                            label: 'Google',
                            child: const Image(
                                image: AssetImage('images/inapp/face.png')),
                            onPressed: () {}),
                        GoogleFacebookLogin(
                            label: 'google',
                            child: const Image(
                                image: AssetImage('images/inapp/google.png')),
                            onPressed: () {}),
                        GoogleFacebookLogin(
                          label: 'Guest',
                          child: const Image(
                              image: AssetImage('images/inapp/guest1.png')),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  final AnimationController _controller;

  const AnimatedLogo({Key? key, required AnimationController controller})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: ((context, child) => Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: child,
          )),
      child: const Image(image: AssetImage('images/inapp/logo1.png')),
    );
  }
}
