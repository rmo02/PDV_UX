import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        color: const Color(0xFF1E1E1E),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8)
                ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF2233AB),
                      Color(0xFF061F89
                      ),
                    ],
                  )
              ),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: const [
                        SizedBox(height: 10,),
                        Text("Atendente", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("João Vitor", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: const [
                        SizedBox(height: 10,),
                        Text("Pátio", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("ValenLogSLZ001", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children:  [
                        SizedBox(height: 10,),
                        Text("Caixa",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("00001", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Container(
                    child: Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('assets/images/pinto.png'),),
                  ),
                  Container(
                    child:   ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF3A52B8)
                      ),
                      child: const Text(
                        'Retirar valor',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child:   ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF3A52B8)
                      ),
                      child: const Text(
                        'Encerrar caixa',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Icon(Icons.logout, color: Colors.white,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  hintText: 'Ticket'
                ),
              ),
            ),
            SizedBox(height: 10,),


            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top:25),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('20/01/2023'),
                      Text('Data')
                    ],
                  ),
                  Column(
                    children: [
                      Text('15:10'),
                      Text('Hora')
                    ],
                  ),
                  Column(
                    children: [
                      Text('04:30'),
                      Text('Permanência')
                    ],
                  ),
                  Column(
                    children: [
                      Text('ABC-1234'),
                      Text('Placa')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),


            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Container(
                    decoration:BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF2233AB),
                            Color(0xFF061F89
                            ),
                          ],
                        ),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12))
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom: 15, top: 15, left: 20),
                    child: Text('Resumo', style: TextStyle( color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Tarifa', style: TextStyle(color: Color(0XFF132999), fontWeight: FontWeight.w500, fontSize: 16),),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                              child: Text('Valor', style: TextStyle(color: Color(0XFF132999), fontWeight: FontWeight.w500, fontSize: 16),)),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1,color: Colors.black12,))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Text('Tarifa de estacionamento', style: TextStyle(color: Color(0XFF292929), fontWeight: FontWeight.w500, fontSize: 14),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('RS 200.00', style: TextStyle(color: Color(0XFF292929), fontWeight: FontWeight.w500, fontSize: 14),),
                                  InkWell(
                                    child: Container(
                                      child: Icon(
                                        Icons.close,
                                        color: Color(0XFF292929),
                                        size: 15.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Produtos', style: TextStyle(color: Color(0XFF132999), fontWeight: FontWeight.w500, fontSize: 16),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text('Triagem de grãos', style: TextStyle(color: Color(0XFF292929), fontWeight: FontWeight.w500, fontSize: 14),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('RS 200.00', style: TextStyle(color: Color(0XFF292929), fontWeight: FontWeight.w500, fontSize: 14),),
                                InkWell(
                                  child: Container(
                                    child: Icon(
                                      Icons.close,
                                      color: Color(0XFF292929),
                                      size: 15.0,
                                    ),
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL', style: TextStyle(color: Color(0XFF132999), fontWeight: FontWeight.w500, fontSize: 16),),
                        Container(
                            child:  Text('RS 100.00', style: TextStyle(color: Color(0XFF292929), fontWeight: FontWeight.w500, fontSize: 14),),
                        )
                      ],
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),

    );
  }
}