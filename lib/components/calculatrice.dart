import 'package:flutter/material.dart';
import 'package:examen/components/image_screen.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key, required String title}) : super(key: key);

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Calculatrice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    customButton('1'),
                    customButton('4'),
                    customButton('7'),
                  ],
                ),
                Column(
                  children: [
                    customButton('2'),
                    customButton('5'),
                    customButton('8'),
                  ],
                ),
                Column(
                  children: [
                    customButton('3'),
                    customButton('6'),
                    customButton('9'),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ImageScreen()),
                );
              },
              child: const Text('Image'),
            ),
            // Bouton '0'
            customButton('0'),
            // Affichage du nombre
            Text(
              _number,
              style: const TextStyle(
                fontSize: 50,
                color: Colors.blue,
              ),
            ),
            // Bouton pour afficher l'image
          ],
        ),
      ),
    );
  }

  Widget customButton(String label) {
    return TextButton(
      onPressed: () => _updatenumber(label),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.teal,
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
