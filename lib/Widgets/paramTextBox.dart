import 'package:flutter/material.dart';
import 'package:flutter_seminario/Resources/pallete.dart';

class ParamTextBox extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final String? initialValue; // Nuevo parámetro para el valor inicial

  ParamTextBox({
    Key? key,
    required this.controller,
    required this.text,
    this.initialValue, // Agregar el nuevo parámetro aquí
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Establecer el valor inicial del controlador de texto si initialValue no es nulo
    if (initialValue != null) {
      controller.text = initialValue!;
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.greyColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.salmonColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: text,
        ),
      ),
    );
  }
}
