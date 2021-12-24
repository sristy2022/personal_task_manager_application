import 'package:flutter/material.dart';
import 'ResetPassword.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: forgotpassword(),
    );
  }
}

class forgotpassword extends StatefulWidget {
  const forgotpassword({ Key key }) : super(key: key);

  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
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
          ), onPressed: () {  },
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
            Text("Forgot password!", style: TextStyle(
              fontSize: 34,
            ),),
            Text("Enter your email to reset password...", style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),),
            SizedBox(height: 20,),
            Text("Email ID", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "example@example.com",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),

            SizedBox(height: 40,),

            
            InkWell(
              onTap: openResetPassword,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060),
                  ),
                  child: Text("Send Request", style: TextStyle(
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
  void openResetPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
  }
}