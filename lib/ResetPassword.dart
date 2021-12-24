import 'package:flutter/material.dart';
import 'SuccessPage.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir'
      ),
      home: resetpass(),
    );
  }
}

class resetpass extends StatefulWidget {
  const resetpass({ Key key }) : super(key: key);

  @override
  _resetpassState createState() => _resetpassState();
}

class _resetpassState extends State<resetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ), onPressed: opensuccesspage,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Reset password!", style: TextStyle(
              fontSize: 34,
            ),),
            Text("Reset code has been sent to your email address. Please input the code below...", style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),),
            SizedBox(height: 20,),
            Text("Reset code", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "******",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Password", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter new password",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Confirm password", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "Re-type password",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),


            SizedBox(height: 40,),

            
            InkWell(
              onTap: opensuccesspage,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060),
                  ),
                  child: Text("Reset Password", style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void opensuccesspage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));
  }
}