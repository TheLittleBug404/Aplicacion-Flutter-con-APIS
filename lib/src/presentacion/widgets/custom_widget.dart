import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorTexto;
  final Function()? onTap;
  const CustomButton({
    super.key, 
    required this.text, 
    required this.color,
    required this.colorTexto,
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 140,
        child: ElevatedButton(
            onPressed: onTap,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(color),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))
                ),
            ),
            child: Text(text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colorTexto
              ),
            ),
        ),
      ),
    );
  }
}