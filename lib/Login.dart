import 'package:flutter/material.dart';
import 'package:infaa/OTPController.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dialCodeDigits = "+213";
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.0),
            Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0),
              child: Image.asset("assets/logo_infaa.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: const Center(
                child: Text(
                  "Enter phone number",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            SizedBox(
              width: 400,
              height: 60,
              child: Text(dialCodeDigits),
            ),
            Container(
              color: Color(0xff542a7d),
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.call_made_rounded),
                    hintText: "Enter the Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(dialCodeDigits),
                    )),
                maxLength: 9,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.all(15),
              color: Color(0xff542a7d),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPControllerScreen(
                          phone: _controller.text,
                          codeDigits: dialCodeDigits)));
                },
                child: Text("Next",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
