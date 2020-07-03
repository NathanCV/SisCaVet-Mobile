import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:siscavet/widgets/animal.dart';
import 'cadastrarAnimal.dart';
import 'minhasConsultas.dart';
import 'perfil.dart';
import 'chatConsulta.dart';
import 'mapaClinicas.dart';

class MeusAnimaisPage extends StatefulWidget {
  @override
  _MeusAnimaisPageState createState() {
    return _MeusAnimaisPageState();
  }
}

class _MeusAnimaisPageState extends State<MeusAnimaisPage> {
  FirebaseUser usuarioCarregado;

  Future<String> _getUser() async {
    var user = await FirebaseAuth.instance.currentUser();
    return user.uid;
  }

  // _carregarAnimal() {
  //   String Id() {
  //     FirebaseAuth.instance.currentUser().then((FirebaseUser user) {
  //       var usuarioCarregado = user;
  //       return usuarioCarregado.uid;
  //     });
  //   }

  //   var animais = Firestore.instance
  //       .collection('Animal')
  //       .where("idUsuario", isEqualTo: Id())
  //       .snapshots();

  //   return animais;
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //Adicionar animal
        floatingActionButton: Container(
          height: 75,
          width: 75,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CadastrarAnimalPage()));
              },
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/AdicionarAnimal.png',
                      height: 31.02,
                      width: 35,
                    )
                  ]),
              backgroundColor: Color(0xFF1EC772),
            ),
          ),
        ),
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Pagina
          Container(
              color: Color(0xFF1EC772),
              //height: MediaQuery.of(context).size.height,
              child: Column(children: [
                //Barra Superior
                Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    //height: MediaQuery.of(context).size.height*0.225,
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Perfil
                            Container(
                              margin: EdgeInsets.fromLTRB(12, 25, 0, 0),
                              child: SizedBox(
                                width: 34,
                                height: 31,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PerfilPage()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/Perfil.png'),
                                                fit: BoxFit.fitHeight)))),
                              ),
                            ),

                            //Logo
                            Container(
                              child: SizedBox(
                                width: 66,
                                height: 72,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/LogoMobileEscrito.png'),
                                    fit: BoxFit.fitHeight),
                              ),
                              height: 72,
                            ),

                            //Animais
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 25, 12, 0),
                              child: SizedBox(
                                width: 34,
                                height: 31,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MeusAnimaisPage()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/AnimalSelecionado.png'),
                                                fit: BoxFit.fitHeight)))),
                              ),
                            ),
                          ]),

                      //Barra de "navegação"
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Chat
                          Container(
                              margin: EdgeInsets.fromLTRB(8, 23, 0, 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 81,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChatConsultaPage()));
                                    },
                                    child: Column(children: [
                                      //Icone
                                      Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Chat.png'),
                                                  fit: BoxFit.fitHeight))),

                                      //Escrito Chat
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                          "Emergencial",
                                          style: TextStyle(
                                            fontSize: 11.77,
                                            fontFamily: 'Times New Roman',
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      )
                                    ])),
                              )),

                          //Consultas
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 81,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MinhasConsultasPage()));
                                    },
                                    child: Column(children: [
                                      //Icone
                                      Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Consulta.png'),
                                                  fit: BoxFit.fitHeight))),

                                      //Escrito Consultas
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                          "Minhas Consultas",
                                          style: TextStyle(
                                            fontSize: 11.77,
                                            fontFamily: 'Times New Roman',
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      )
                                    ])),
                              )),

                          //Clinicas
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 23, 8, 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 81,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MapaClinicasPage()));
                                    },
                                    child: Column(children: [
                                      //Icone
                                      Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Mapa.png'),
                                                  fit: BoxFit.fitHeight))),

                                      //Escrito Consultas
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                          "Mapa de Clínicas",
                                          style: TextStyle(
                                            fontSize: 11.77,
                                            fontFamily: 'Times New Roman',
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      )
                                    ])),
                              )),
                        ],
                      )
                    ])),

                //Lista
                Container(
                    //height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(25),
                          topRight: const Radius.circular(25),
                        )),
                    child: Expanded(
                      child: Container(
                        child: FutureBuilder(
                            future: _getUser(),
                            builder: (_, snapshot) {
                              if (!snapshot.hasData) {
                                return CircularProgressIndicator();
                              } else {
                                return StreamBuilder(
                                    stream: Firestore.instance
                                        .collection('Animais')
                                        .where('idUsuario',
                                            isEqualTo: snapshot.data)
                                        .snapshots(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting)
                                        return CircularProgressIndicator();
                                      //expanded
                                      return ListView.builder(
                                          itemCount:
                                              snapshot.data.documents.length,
                                          itemBuilder: (_, indice) {
                                            String nome =
                                                snapshot.data.documents[indice]
                                                    ['nomeAnimal'];
                                            String foto =
                                                snapshot.data.documents[indice]
                                                    ['imagemAnimal'];
                                            String especie = snapshot.data
                                                .documents[indice]['especie'];
                                            // String consulta = snapshot.data
                                            //     .documents[indice][''];
                                            return Animal(foto, nome, especie,
                                                "30/06/2020");
                                          });
                                    });
                              }
                            }),
                      ),
                    )
                    // Animal(null, "Ragnar", "Gato", "30/06/2020"),
                    // Animal(null, "Jorge Tobias", "Cachorro", "29/004/2020"),
                    // Animal(null, "Sir Kled", "Passarinho", "29/04/2019"),
                    ),
              ]))
        ])));
  }
}
