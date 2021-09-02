import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30 ),
        child: ListView(
          children: [
            SizedBox(height:30 ,
            ),
            Text(
              "Let's Get Started!",
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
                "Create a account to Q Allure to get all features",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
            ),
            SizedBox(height:40 ,
            ),
            //enter email
            TextFormField(

                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(Icons.perm_identity),
                  labelText: "Name",
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
            TextFormField(

                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Email",
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
            TextFormField(

                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: "Phone",
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

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye),
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
            SizedBox(
              height: 10,
            ),
            TextFormField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Confirm Password",
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
            SizedBox(
              height: 25,
            ),

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
                  child: Text('CREATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
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
                }, child: Text('Login here',
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
