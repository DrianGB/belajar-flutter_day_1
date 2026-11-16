import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int power = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adrian Project",
          style:TextStyle(
              color:Colors.grey,
              fontWeight: FontWeight.w600
            )
          ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,50,30,0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 90,
                child: ClipOval(
                  child: Image(
                    image: AssetImage(
                      "assets/rem.jpg"
                    ),
                    width: 180, // width harus lebih kecil dari radius * 2
                    height: 180, // height harus lebih kecil dari radius * 2
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 5
              ),
              Text(
                "Adriansyah",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 20
              ),
              Text(
                "PROFESI OF PLAYER",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 5
              ),
              Text(
                "Programer",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(
                height: 20
              ),
              Text(
                "POWER",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 5
              ),
              Text(
                "$power",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent
                ),
              ),
              SizedBox(
                height: 35
              ),
              Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.grey,
                  ),
                  SizedBox(width:10),
                  Text(
                    "Adriansyah Taufik Hidayah",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize:18.00,
                      letterSpacing: 1.0
                    )
                  ),
                ]
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            power++;
          });
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add,color: Colors.white,),
        ),
    );
  }
}