import 'package:app_login/src/presentacion/widgets/animation.dart';
import 'package:app_login/src/presentacion/widgets/welcome.dart';
import 'package:flutter/material.dart';

//te quedaste en el minuto 54 del video 6
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CustomBody(),
    );
  }
}

class _CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //con esto volvemos resposive nuestras aplicaciones
    //con esto siempre ocupara el 50% de la pantalla de cualquier pantalla
    final tamanoAltura = MediaQuery.of(context).size.height;
    return Column(
      children: [
        AnimationWidget(tamanoAltura: tamanoAltura),
        WelcomeWidget(tamanoAltura: tamanoAltura),
      ],
    );
  }
}


