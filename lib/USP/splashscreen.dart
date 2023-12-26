import 'package:flutter/material.dart';


class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

          @override
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
          }
        }
        