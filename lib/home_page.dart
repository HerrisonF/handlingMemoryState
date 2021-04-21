import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_handling_memory/outra_tela.dart';
import 'package:flutter_handling_memory/tela_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool estaPrimeira = true;
  int index = 0;

  List<Widget> telas = [
    TelaList(),
    OutraTela(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => OutraTela(),
                //   ),
                // );
                setState(() {
                  if (estaPrimeira) {
                    index = 1;
                  } else {
                    index = 0;
                  }
                  estaPrimeira = !estaPrimeira;
                });
              },
              child: Text('Mudar Tela'),
            ),
            telas.elementAt(index),
          ],
        ),
      ),
    );
  }
}
