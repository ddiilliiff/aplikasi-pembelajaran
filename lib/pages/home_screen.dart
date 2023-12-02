import 'package:flutter/material.dart';
import 'package:test1/widget/card.dart';
import 'package:test1/widget/modal.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final MyUtilities myUtilities = MyUtilities();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: const Image(
              image: AssetImage('assets/menu.png'),
              fit: BoxFit.cover,
              ),
          ),
          
          Column(
            children: [
              SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyCard2(
                      onPressed: (){},
                       color: Colors.yellow, 
                       icon: Icons.book),
                    MyCard2(
                      onPressed: (){
                        myUtilities.showD(context);
                      },
                       color: Colors.yellow, 
                       icon: Icons.settings),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 310.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ]
                        ),
                      margin: const EdgeInsets.all(30.0),
                      width: 200.0,
                      height: 50.0,
                      child: const Center(
                        child: Text(
                          "PILIH MENU",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MyCard(
                          title: "BELAJAR HURUF", 
                          onPressed: (){
                            Navigator.pushNamed(context, "/huruf");
                          }, 
                          color: Colors.red),
                        MyCard(
                          title: "BELAJAR ANGKA", 
                          onPressed: (){
                            Navigator.pushNamed(context, "/angka");
                          }, 
                          color: Colors.yellow),
                        MyCard(
                          title: "KUIS", 
                          onPressed: (){
                            Navigator.pushNamed(context, "/kuis");
                          }, 
                          color: Colors.blue),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}