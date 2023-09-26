import 'package:fl3_componentes/screen/form_screen.dart';
import 'package:fl3_componentes/screen/screen1.dart';
import 'package:fl3_componentes/screen/screen2.dart';
import 'package:fl3_componentes/screen/screen3.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'title': 'Perfil', 'icon': Icons.account_circle},
      {'title': 'Horas en la semana', 'icon': Icons.people},
      {'title': 'Notificaciones', 'icon': Icons.campaign_outlined},
      {'title': 'Edición de Perfil', 'icon': Icons.account_box},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SICAH'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['title']),
            leading: Icon(items[index]['icon']), // Icono en la izquierda
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen2()),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen3()),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormScreen()),
                );
              }
            },
          );
        },
      ),
    );
  }
}
