import 'package:flutter/material.dart';

void main() => runApp(MonApplication());

class MonApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // TODO utilisation du widget Scaffold
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFB74093),
              title: Text('Bonjour App'),
            ),
            body: Column(
              children: [
                Center(
                    child: Text(
                  'Bonjour',
                  style: TextStyle(
                      color: Color(0xFFB74093),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )),
                Center(
                    child: Text(
                  'Je suis Ross',
                  style: TextStyle(color: Color(0xFFB74093), fontSize: 30),
                )),
                Center(
                    child:
                        Image.asset('assets/images/orange.png', height: 350)),
                Center(child: BoutonContactezMoi())
              ],
            )));
  }
}

class BoutonContactezMoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO code du bouton "Contactez-moi" à compléter
    return ElevatedButton(
        child: Text("Contactez-moi !"),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFB74093)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        onPressed: () => {
              showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                      title: Text('Contactez-moi'),
                      content: Text('Je suis joignable à l\'IMT Atlantique')))
            });
  }
}
