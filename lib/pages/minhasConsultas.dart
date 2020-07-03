import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class MinhasConsultasPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //adicionar Consulta
      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
               Navigator.of(context).pushReplacementNamed('/CadastrarConsulta');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/AdicionarConsulta.png',
                  height: 31.02,
                  width: 35,
                )
              ]
            ),
            backgroundColor: Color(0xFF1EC772),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Pagina
              Container(
                color: Color(0xFF1EC772),
                //height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [

                    //Barra Superior
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      //height: MediaQuery.of(context).size.height*0.225,
                      child: Column(
                        children: [

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
                                    onTap:() {
                                      Navigator.of(context).pushReplacementNamed('/Perfil');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/Perfil.png'),
                                          fit: BoxFit.fitHeight  
                                        )
                                      )
                                    )
                                  ),
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
                                    image: AssetImage('assets/images/LogoMobileEscrito.png'),
                                    fit: BoxFit.fitHeight                                      
                                  ),
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
                                    onTap:() {
                                      Navigator.of(context).pushReplacementNamed('/MeusAnimais');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/Animal.png'),
                                          fit: BoxFit.fitHeight  
                                        )
                                      )
                                    )
                                  ),
                                ),
                              ),

                            ]
                          ),

                          //Barra de "navegação"
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              //Chat
                              Container(
                                margin: EdgeInsets.fromLTRB(8, 23, 0, 0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 81,
                                  child: GestureDetector(
                                    onTap:() {
                                      Navigator.of(context).pushReplacementNamed('/ChatConsulta');
                                    },
                                    child: Column(
                                      children: [
                                        
                                        //Icone
                                        Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/Chat.png'),
                                              fit: BoxFit.fitHeight  
                                            )
                                          )
                                        ),

                                        //Escrito Chat
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text("Emergencial",
                                            style: TextStyle(
                                              fontSize: 11.77,
                                              fontFamily: 'Times New Roman',
                                              color: Color(0xFFFFFFFF),                
                                            ),
                                          ),
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ),

                              //Consultas
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 81,
                                  child: GestureDetector(
                                    onTap:() {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => MinhasConsultasPage()
                                      ));
                                    },
                                    child: Column(
                                      children: [
                                        
                                        //Icone
                                        Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/Consulta.png'),
                                              fit: BoxFit.fitHeight  
                                            )
                                          )
                                        ),

                                        //Escrito Consultas
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text("Minhas Consultas",
                                            style: TextStyle(
                                              fontSize: 11.77,
                                              fontFamily: 'Times New Roman',
                                              color: Color(0xFFFFFFFF),
                                                                     
                                            ),
                                          ),
                                        ),

                                        //Seleção
                                        Container(
                                          height: 3,
                                          width: MediaQuery.of(context).size.width*0.29,
                                          margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 4),
                                                  blurRadius: 4,
                                                  color: Color.fromARGB(100, 0, 0, 0)
                                                )
                                            ]
                                          ),
                                        ),
                                      ]
                                    )
                                  ),
                                )
                              ),

                              //Clinicas
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 23, 8, 0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  height: 81,
                                  child: GestureDetector(
                                    onTap:() {
                                      Navigator.of(context).pushReplacementNamed('/MapaClinicas');
                                    },
                                    child: Column(
                                      children: [
                                        
                                        //Icone
                                        Container(
                                          width: 45,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/Mapa.png'),
                                              fit: BoxFit.fitHeight  
                                            )
                                          )
                                        ),

                                        //Escrito Consultas
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                          child: Text("Mapa de Clínicas",
                                            style: TextStyle(
                                              fontSize: 11.77,
                                              fontFamily: 'Times New Roman',
                                              color: Color(0xFFFFFFFF),
                                                                
                                            ),
                                          ),
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ),

                            ],
                          )

                        ]
                      )

                      
                    ),

                    //Lista
                    Container(
                      height: MediaQuery.of(context).size.height*0.7639,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(25),
                          topRight: const Radius.circular(25),
                        )
                      ),
                      child: Column(
                        children: [
                          
                          //Consulta1
                          GestureDetector(
                            onTap: () {print("Click na Consulta 1");},
                            child: Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.fromLTRB(14, 14, 0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

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
                                         Image.asset(
                                           'assets/images/Galeria.png',
                                           height: 40,
                                           width: 40,
                                        )
                                      ]
                                    )
                                  ),

                                  //Dados
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        
                                        //Data
                                        Row(
                                          children: [

                                            //Fixo
                                            Text("Data: ", 
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Times New Roman',
                                                color: Color(0xFF50574a),
                                              )
                                            ),

                                            //Variavel
                                            Text("30/08/2020",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Times New Roman',
                                                color: Color(0xFF50574a),
                                              )
                                            )
                                          ],
                                        ),

                                        //Veterinário
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 5, 0, 6),
                                          child:Row(
                                            children: [

                                              //Fixo
                                              Text("Veterinário(a): ", 
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Times New Roman',
                                                  color: Color(0xFF50574a),
                                                )
                                              ),

                                              //Variavel
                                              Text("Dr. Chucrutes",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Times New Roman',
                                                  color: Color(0xFF50574a),
                                                )
                                              )
                                            ],
                                          )
                                        ),

                                        //Animal
                                        Row(
                                          children: [

                                            //Fixo
                                            Text("Animal: ", 
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Times New Roman',
                                                color: Color(0xFF50574a),
                                              )
                                            ),

                                            //Variavel
                                            Text("Tobias Jorge",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Times New Roman',
                                                color: Color(0xFF50574a),
                                              )
                                            )
                                          ],
                                        ),

                                      ],

                                    ),
                                  )
                                ],
                              )
                            )
                          ),

                          //Divisoria
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black12,
                            margin: EdgeInsets.fromLTRB(5, 14, 5, 0),
                          ),
                        ]
                      )
                    )

                  ]
                )
              )
            ]
          )
        )
      )


    );
  }
}