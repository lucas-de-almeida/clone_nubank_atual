import 'package:flutter/material.dart';

import 'package:flip_card/flip_card.dart';

class CloneCartaoNubank extends StatefulWidget {
  @override
  _CloneCartaoNubankState createState() => _CloneCartaoNubankState();
}

class _CloneCartaoNubankState extends State<CloneCartaoNubank> {
  var nomeCartao = TextEditingController();
  var numeroCartao = TextEditingController();
  String nome = '';
  String numero = '';
  var testeNumero = TextEditingController();
  String teste = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        title: Text('Cartão do Nubank'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.credit_card),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
      body: FlipCard(front: cartaoFrente(), back: cartaoAtras()),
    );
  }

  Widget cartaoAtras() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 8.5 / 5.4,
                  child: Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(109, 33, 119, 1),
                  )),
                ),
                Positioned(
                  top: 10,
                  right: 3,
                  child: Container(
                    width: 338,
                    height: 80,
                    color: Colors.white54,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    teste,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: 15,
                  width: 80,
                  height: 80,
                  child: Container(
                    child: Image.asset(
                      'assets/cirrus.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'numero',
            ),
            keyboardType: TextInputType.number,
            controller: testeNumero,
            onChanged: (value) => setState(
              () => {teste = testeNumero.text},
            ),
          ),
        ],
      ),
    );
  }

  Widget cartaoFrente() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 8.5 / 5.4,
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(109, 33, 119, 1),
                )),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/mastercard.png'),
                ),
              ),
              Positioned(
                top: 55,
                left: 20,
                child: Container(
                  width: 55,
                  height: 55,
                  child: Image.asset('assets/chip.png'),
                ),
              ),
              Positioned(
                top: 63,
                left: 80,
                child: Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    'assets/nfc.png',
                    color: Colors.white54,
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: -10,
                child: Container(
                  width: 140,
                  height: 140,
                  child: Image.asset(
                    'assets/nu_logo.png',
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                left: 120,
                child: Text(
                  nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'nome',
          ),
          controller: nomeCartao,
          onChanged: (value) => setState(
            () => {nome = nomeCartao.text},
          ),
        ),
      ],
    );
  }
}
