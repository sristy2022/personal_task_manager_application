import 'package:flutter/material.dart';
import 'package:manage/HomePage.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: successpage(),
      
    );
  }
}

class successpage extends StatefulWidget {
  const successpage({ Key key }) : super(key: key);

  @override
  _successpageState createState() => _successpageState();
}

class _successpageState extends State<successpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/image/success.png"))
              ),
            ),
            Text("Successful!", style: TextStyle(
              fontSize: 35,
              
            ),),
            Text("Password Changed successfully", style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),),
            SizedBox(height: 70,),
            Center(
                child: InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0xfff96060),
                    ),
                    child: Text("Continue", style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
          ],
        ),
      ),
      
    );
  }
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
}