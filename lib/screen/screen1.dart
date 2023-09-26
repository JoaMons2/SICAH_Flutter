import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Nuestro perfil necesita modificarlo'),
      ),
    );
  }
}
