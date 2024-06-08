import 'package:flutter/material.dart';

void main() => runApp(login());

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: estilo(),
    );
  }
}

Widget estilo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://tunegociobonito.com/wp-content/uploads/2020/05/como-decorar-tienda-ropa-vender-mas-2.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[titulo(), usuario(), contrasena(), boton()],
      ),
    ),
  );
}

Widget titulo() {
  return Container(
      child: Column(
    children: [
      Image(
          image: NetworkImage(
              "https://edwingo9507.github.io/tienda/imagenes/LOGO.jpeg")),
      Text(
        "LOVING ADD",
        style: TextStyle(color: Colors.white, fontSize: 23),
      ),
    ],
  ));
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
          hintText: "usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget contrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Contraseña", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget boton() {
  return ElevatedButton(
    onPressed: () {
      /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => app1()),
      );*/
    },
    child: Text('Ingresar'),
  );
}
