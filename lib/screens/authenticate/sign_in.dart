import 'package:brew_crew/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({ this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          'Sign In Here',
          style: TextStyle(
            color: Colors.blue[900],
          ),
        ),
        actions: [
          TextButton.icon(
              onPressed: (){
                widget.toggleView();
              },
              icon: Icon(Icons.how_to_reg_outlined,
              color: Colors.blue[900]),
              label: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.blue[900]
              ),
              ),
          )
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Form(
          child: Column(
            children: [
              TextFormField(onChanged: (val) {
                setState(()=> email = val);
              }),
              SizedBox(height: 20),
              TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 50),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ElevatedButton(
                    onPressed: () {
                      print(email);
                      print(password);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Colors
                              .blue[200]; // Use the component's default.
                        },
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
