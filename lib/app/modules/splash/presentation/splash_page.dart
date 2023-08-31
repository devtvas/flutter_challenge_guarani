import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/commons/button_animation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3)).then((_) async {
    //   Modular.to.pushReplacementNamed('/home');
    // });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFB444),
        body: Stack(
          children: [
            // Positioned(
            //   left: -234.19,
            //   top: 200.06,
            //   child: Transform(
            //     transform: Matrix4.identity()
            //       ..translate(0.0, 0.0)
            //       ..rotateZ(-0.25),
            //     child: Container(
            //       width: 593.50,
            //       height: 653.50,
            //       padding: const EdgeInsets.only(
            //         top: 32.93,
            //         left: 32.34,
            //         right: 32.96,
            //         bottom: 32.48,
            //       ),
            //       clipBehavior: Clip.antiAlias,
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //           image:
            //               AssetImage("assets/images/splash/icon_poke_ball.png"),
            //           fit: BoxFit.cover,

            //         ),
            //       ),
            //       child: Row(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Container(
            //             width: 478.21,
            //             height: 478.09,
            //             child: Stack(children: []),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            // const PikachuRunningWidget(height: 150, width: 150),

            Positioned(
              left: 19.93,
              top: 127.56,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text(
                    //   'Find Your',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 35.88,
                    //     fontFamily: 'Clash Display',
                    //     fontWeight: FontWeight.w300,
                    //   ),
                    // ),
                    Container(
                      width: 411.89,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/splash/pokemon.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 150.93,
              top: 527.56,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // InkWell(
                    //   onTap: () {
                    //     Modular.to.pushReplacementNamed('/home');
                    //   },
                    //   child: Container(
                    //     width: 150,
                    //     height: 150,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(80.0),
                    //       color: Colors.white,
                    //       image: const DecorationImage(
                    //         image: AssetImage(
                    //           "assets/images/splash/pokeball.png",
                    //         ),
                    //         fit: BoxFit.cover,
                    //       ),
                    //       boxShadow: const [
                    //         BoxShadow(
                    //           color: Colors.black,
                    //           blurRadius: 2.0,
                    //           spreadRadius: 0.0,
                    //           offset: Offset(
                    //               2.0, 2.0), // shadow direction: bottom right
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    InkWell(
                        onTap: () {
                          Modular.to.pushReplacementNamed('/home');
                        },
                        child: ButtonAnimation(
                          onPressed: () {},
                          color: Colors.black,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/splash/pokeball.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
