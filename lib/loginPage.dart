import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          shrinkWrap: true,

          children: [
            //image
            Container(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage('assets/login.png',
                ),
              ),
            ),
            //welcome back
            Text(
              "Welcome back!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height:10 ,
            ),
            //text
            Center(
              child: Text(
                "Log in to your existant account of Q allure",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
                ),
              ),
            ),
            SizedBox(height:20 ,
            ),
            //enter email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusColor: Colors.white,
                prefixIcon: Icon(Icons.perm_identity),
                labelText: "Enter Email",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 2.0,
                  ),
                ),
              )
            ),
            SizedBox(height:20 ,
            ),
            //enter password
            TextFormField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.remove_red_eye),
                  ),
                  labelText: "Password",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                )
            ),
            //forgot password?
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: (){},
                child: Text('Forgot Password?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight:FontWeight.bold,
                    color: Colors.black,

                  ),
                ),
              ),
            ),
            //log in button
            MaterialButton(onPressed: (){},
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Container(
                width: double.infinity,
                height:50 ,
                decoration: BoxDecoration(
                  color:Colors.indigo[900],
                  borderRadius: BorderRadius.circular(25),

                ),
                child: Center(
                  child: Text('LOG IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "or connect with",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //google and facebook logos
            Row(

              children: [
                //facebook
                Expanded(
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    onPressed: (){},
                    child: Container(
                      width: 150,
                      height:45 ,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_outlined,
                          color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('facebook',
                          style: TextStyle(
                            color:Colors.white,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                //google
                Expanded(
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    onPressed: (){},
                    child: Container(

                      width: 150,
                      height:45 ,
                      decoration: BoxDecoration(
                        color: Colors.red[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 20,
                              height: 20,
                              child: Image(image: AssetImage('assets/iconfinder_Google_1298745.png',
                              ),
                                color: Colors.white,
                              ),
                          ),
                          SizedBox(width: 10,),
                          Text('Google',
                            style: TextStyle(
                              color:Colors.white,
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                }, child: Text('Sign Up',
                style: TextStyle(
                  color: Colors.blue,
                ),),
                )
              ],
            ),




          ],
        ),
      ),

    );
  }
}
