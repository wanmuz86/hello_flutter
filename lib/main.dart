import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Hello World")),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child:
          Column(
            children: [
              Text("Welcome to my app!", style: GoogleFonts.lato(
                  textStyle:TextStyle(fontSize: 32, color: Colors.blue)),
              ),
              SizedBox(height: 8,),
              Image.network("http://static.asiawebdirect.com/m/kl/portals/kuala-lumpur-ws/homepage/pagePropertiesOgImage/kuala-lumpur.jpg.jpg"),
              SizedBox(height: 8,),
              Text("This is my first app", style:TextStyle(fontSize: 20, color:Colors.red)),
              Image.asset("assets/bersin.png"),
              SizedBox(height: 8,),
              Text("Please give feedback!"),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text("This is left text"),
                  Text("This is right text")
                ],
              ),
              RaisedButton(
                color:Colors.yellow,
                child: Text("Press me!"),
                  onPressed: (){
                    Toast.show("Hello World",
                        context,
                        duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              })
            ],
          )),
        ),
      )
    );
  }
}
