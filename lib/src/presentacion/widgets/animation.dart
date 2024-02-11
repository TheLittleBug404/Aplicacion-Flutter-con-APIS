import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    super.key,
    required this.tamanoAltura,
  });

  final double tamanoAltura;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: tamanoAltura * 0.6, //ocupara el 60% de la pantalla
      width: double.infinity,
      //color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Lottie.asset(
              'assets/animations/cerveza.json',
            ),
          ),
          const Text(
            "chelas",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          const Center(
            child: Text(
              "C A F E   B A R",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}