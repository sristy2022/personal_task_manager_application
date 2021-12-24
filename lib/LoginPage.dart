import 'package:flutter/material.dart';
import 'Forgetpassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({ Key key }) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
            Text("Welcome back!", style: TextStyle(
              fontSize: 34,
            ),),
            Text("Sign in to continue...", style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),),
            SizedBox(height: 20,),
            Text("User name", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "Give your username",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),

            SizedBox(height: 40,),
            Text("Password", style: TextStyle(
              fontSize: 22,
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "Give your password",
              ),style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgetPassword,
                  child: Text("Forget password?", style: TextStyle(
                    fontSize: 16,
                  ),),
                )
              ],
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060),
                  ),
                  child: Text("Log in", style: TextStyle(
                    fontSize: 18,
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
  void openForgetPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
  }
}