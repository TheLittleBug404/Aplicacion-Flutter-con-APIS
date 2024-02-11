import 'package:app_login/src/presentacion/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.tamanoAltura,
  });

  final double tamanoAltura;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      height: tamanoAltura * 0.4, //ocupara el 40% de la pantalla
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text("BIENVENIDO",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            
            children: [
              CustomButton(
                text: "Ingresar",
                color: Colors.black,
                colorTexto: Colors.white,
                onTap:(){
                  Navigator.pushNamed(context, '/login');
                }
              ),
              const SizedBox(
                width: 80,
              ),
              CustomButton(
                text: "Registrar",
                color: Colors.white,
                colorTexto: Colors.black,
                onTap: (){
                  Navigator.pushNamed(context, '/register');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
