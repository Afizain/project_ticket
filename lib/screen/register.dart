import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tiket/screen/dashboard.dart';
import 'package:project_tiket/screen/google_signup.dart';
import 'package:project_tiket/screen/login.dart';

void main() => runApp(const regiter());

class regiter extends StatelessWidget {
  const regiter ({Key? key}) : super(key: key);

  static const String _title = 'MAPS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Color(0xfF1C1D27),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10, bottom: 2, top: 10),
              child: Text(
                'Create Account',
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Please input your data information!',
                  style: GoogleFonts.poppins(
                      color: Color(0xfFA9A7A7),
                      fontWeight: FontWeight.normal,
                      fontSize: 13),
                ),
                ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfF818181)),
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Username',
                  labelStyle: GoogleFonts.outfit(
                    fontWeight: FontWeight.normal,
                    color: Color(0xfF6F6F6F),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfF818181)),
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Phone',
                  labelStyle: GoogleFonts.outfit(
                    fontWeight: FontWeight.normal,
                    color: Color(0xfF6F6F6F),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfF818181)),
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Email addres',
                  labelStyle: GoogleFonts.outfit(
                    fontWeight: FontWeight.normal,
                    color: Color(0xfF6F6F6F),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Password',
                  labelStyle: GoogleFonts.outfit(
                    fontWeight: FontWeight.normal,
                    color: Color(0xfF6F6F6F),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Color.fromARGB(51, 77, 51, 138),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => dashboard(),
                      ),
                    );
                  }),
            ),

            Row(
              children: <Widget>[
                Text('Alredy have account?',
                style: GoogleFonts.outfit(
                  color: Color(0xfFA9A7A7),
                  fontSize: 13)),
                TextButton(
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.outfit(color: Colors.white,
                    fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}