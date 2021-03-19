import 'package:brew_crew/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Home',
          style: TextStyle(
            color: Colors.blue[900],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await _auth.signOut();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return Colors.yellow;
                  return null; // Use the component's default.
                },
              ),
            ),
            child: Text('Signout',
              style: TextStyle(
                  color: Colors.black
              ),
            ),

          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
    );
  }
}
