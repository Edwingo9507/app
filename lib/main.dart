import 'package:flutter/material.dart';

void main() => runApp(app1());

class app1 extends StatelessWidget {
  const app1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app1",
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
        appBar: AppBar(),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 163, 161, 154),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.network(
                      "https://edwingo9507.github.io/tienda/imagenes/LOGO.jpeg"),
                ),
                Container(
                  margin: EdgeInsets.all(50),
                ),
                Container(
                  color: Color.fromARGB(255, 24, 23, 23),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "caimsas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 24, 23, 23),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "Jeans",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 24, 23, 23),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "Buzos",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 24, 23, 23),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "Jogger",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 24, 23, 23),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    "Short",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://tunegociobonito.com/wp-content/uploads/2020/05/como-decorar-tienda-ropa-vender-mas-2.jpg"),
            fit: BoxFit.cover)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [camisas(), jeans(), buzos()],
    ),
  );
}

Widget camisas() {
  return Container(
    alignment: Alignment.topLeft,
    height: 250,
    child: Column(children: [
      Text(
        "Camisas",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          backgroundColor: Color.fromARGB(190, 4, 9, 30),
        ),
      ),
      Container(
        child: Row(
          children: [
            Image.network(
              "https://raw.githubusercontent.com/Edwingo9507/tienda/main/imagenes/camiseta1.webp",
              width: 200,
              height: 200,
            ),
            Image.network(
              "https://raw.githubusercontent.com/Edwingo9507/tienda/main/imagenes/camiseta2.webp",
              width: 150,
              height: 200,
            ),
          ],
        ),
      )
    ]),
  );
}

Widget jeans() {
  return Container(
    alignment: Alignment.topLeft,
    height: 250,
    child: Column(children: [
      Text(
        "Jeans",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      Container(
        child: Row(
          children: [
            Image.network(
              "https://cdn.koaj.co/225269-thickbox_default/camiseta-femenina-manga-larga-cuello-redondo-estampada.jpg",
              width: 200,
              height: 200,
            ),
            Image.network(
              "https://cdn.koaj.co/225269-thickbox_default/camiseta-femenina-manga-larga-cuello-redondo-estampada.jpg",
              width: 150,
              height: 200,
            ),
          ],
        ),
      )
    ]),
  );
}

Widget buzos() {
  return Container(
    alignment: Alignment.topLeft,
    height: 250,
    child: Column(children: [
      Text(
        "Buzos",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      Container(
        child: Row(
          children: [
            Image.network(
              "https://raw.githubusercontent.com/Edwingo9507/tienda/main/imagenes/buzo1.webp",
              width: 200,
              height: 200,
            ),
            Image.network(
              "https://raw.githubusercontent.com/Edwingo9507/tienda/main/imagenes/buzo2.webp",
              width: 150,
              height: 200,
            ),
          ],
        ),
      ),
    ]),
  );
}
