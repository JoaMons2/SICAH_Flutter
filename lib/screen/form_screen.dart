import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const MyForm(),
    );
  }
}
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() == true) {
      // Aquí puedo realizar acciones con los datos del formulario
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      // Por ejemplo, imprimir los datos ingresados
      ('Nombre: $name');
      ('Email: $email');
      ('Contraseña: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Por favor, ingresa tu nombre';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Por favor, ingresa tu email';
                } else if (value != null && !value.contains('@')) {
                  return 'Ingresa un email válido';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Por favor, ingresa tu contraseña';
                } else if (value != null && value.length < 6) {
                  return 'La contraseña debe tener al menos 6 caracteres';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}