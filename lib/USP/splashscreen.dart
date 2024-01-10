import 'package:Remainder/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: FlutterSplashScreen.scale(
        animationCurve: Curves.easeInOutCirc,
        gradient: RadialGradient(colors: [
          const Color.fromARGB(255, 255, 204, 136),
          Color.fromRGBO(255, 107, 0, 1)
        ], center: Alignment.center),
        childWidget: SizedBox(
          child: Image.asset("images/Minutes1.png"),
        ),
        duration: Duration(milliseconds: 4000),
        animationDuration: Duration(milliseconds: 2000),
        onAnimationEnd: () => debugPrint("on Scale End"),
        nextScreen: HomeScreen(),
      ),
    );
  }

  /*  @override
          Widget build(BuildContext context) {
        
            return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
          borderRadius : const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      boxShadow : const [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : const Color.fromRGBO(255, 107, 0, 1),
      border : Border.all(
          color: Color.fromRGBO(0, 0, 0, 1),
          width: 1,
        ),
  ),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
            width: 327.580810546875,
            height:350.239990234375,
            decoration: const BoxDecoration(
              image :  DecorationImage(
              image: AssetImage('images/Minutes1.png'),
              fit: BoxFit.fitWidth
                  ),
                  )
                  ),
          ]
        ),
      )
    );
          }*/
}
