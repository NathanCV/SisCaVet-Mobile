import 'package:flutter/material.dart';

class Animal extends StatelessWidget {
  final String foto;
  final String nome;
  final String especie;
  final String consulta;

  Animal(this.foto, this.nome, this.especie, this.consulta);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      GestureDetector(
          onTap: () {
            print("Click no animal 1");
          },
          child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(14, 14, 0, 0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                //Foto
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF648365),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          foto == null
                              ? Image.asset(
                                  'assets/images/Galeria.png',
                                  height: 40,
                                  width: 40,
                                )
                              : Image.network(
                                  foto,
                                  height: 40,
                                  width: 40,
                                )
                        ])),

                //Dados
                Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Nome
                          Row(
                            children: [
                              //Fixo
                              Text("Nome: ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Times New Roman',
                                    color: Color(0xFF50574a),
                                  )),

                              //Variavel
                              Text(nome,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Times New Roman',
                                    color: Color(0xFF50574a),
                                  ))
                            ],
                          ),

                          //Especie
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 6),
                              child: Row(
                                children: [
                                  //Fixo
                                  Text("Espécie: ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Times New Roman',
                                        color: Color(0xFF50574a),
                                      )),

                                  //Variavel
                                  Text(especie,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Times New Roman',
                                        color: Color(0xFF50574a),
                                      ))
                                ],
                              )),

                          //Ultima Consulta
                          Row(children: [
                            //Fixo
                            Text("Última Consulta: ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Times New Roman',
                                  color: Color(0xFF50574a),
                                )),

                            //Variavel
                            Text(consulta,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Times New Roman',
                                  color: Color(0xFF50574a),
                                ))
                          ])
                        ]))
              ]))),
      //Divisoria
      Container(
        height: 1,
        width: MediaQuery.of(context).size.width,
        color: Colors.black12,
        margin: EdgeInsets.fromLTRB(5, 14, 5, 0),
      ),
    ]));
  }
}
