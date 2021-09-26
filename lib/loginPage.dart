import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  Widget createEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Ingrese su Correo electronico'),
      ),
    );
  }

  Widget createPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Ingrese su Contraseña'),
        obscureText: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testeo Login'),
        backgroundColor: Colors.green[400],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: ListView(children: [
          createEmailInput(),
          createPasswordInput(),
          MyInputButton(),
        ]),
      ),
    );
  }
}

class MyInputButton extends StatelessWidget {
  const MyInputButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: RaisedButton(
        child: Text(
          "ingresar",
          style: TextStyle(color: Colors.white70),
        ),
        color: Colors.green[400],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda pagina"),
        backgroundColor: Colors.green[400],
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.green[400],
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Regresar',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
