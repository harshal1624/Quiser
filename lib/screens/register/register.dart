import 'package:flutter/material.dart';
import 'package:quiser/components/background.dart';
import 'package:quiser/screens/login/login.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                child: const Text('REGISTER',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enrollment Number',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Department',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Passing Year',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Sem',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment:Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01,),

              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                child: RaisedButton(onPressed: (){},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 136, 34),
                              Color.fromARGB(255, 255, 177, 41)
                            ])
                    ),
                    padding: const EdgeInsets.all(0),
                    child: const Text('SIGN UP',style: TextStyle(
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Text(
                    "Already have an account? Sign In",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
