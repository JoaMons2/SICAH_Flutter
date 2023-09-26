import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tus Horas'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('No se te ha asignado tus horas'),
      ),
    );
  }
}
