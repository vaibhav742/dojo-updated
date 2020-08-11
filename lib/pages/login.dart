import 'package:flutter/material.dart';
import 'package:dojo/pages/otp_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'DOJO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: 300,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'with your',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Text(
                    'phone number',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: phonecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.red)),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.cancel),
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            phonecontroller.clear();
                          });
                        },
                      ),
                      hintStyle: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                      hintText: "enter number",
                    ),
                    style: TextStyle(
                      letterSpacing: 2.0,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // navigate to otp_screen.dart for the user to enter the otp
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OTP()));
                      },
                      child: Container(
                        height: 45.0,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                            child: Text(
                          'NEXT',
                          style: TextStyle(color: Colors.white, fontSize: 21.0),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
