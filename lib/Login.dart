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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
            ),
            SizedBox(height: 25.0),

            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              color: Colors.white,
              child: TextField(
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffd4b01e)),
                        borderRadius: BorderRadius.circular(50)
                    ) ,
                     prefixIcon: Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Text("+213",
                       style: TextStyle(
                         fontSize: 16.0,
                         fontWeight: FontWeight.bold
                       ),),
                     ),
                    suffixIcon: Icon(Icons.phone,color: Color(0xffd4b01e),),
                    hintText: "Enter the Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(""),
                    )),
                maxLength: 9,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff542a7d),
              ),
              width: 350,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPControllerScreen(
                          phone: _controller.text,
                         codeDigits: dialCodeDigits
                      )));
                },
                child: const Text("Next",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,
                    fontSize: 25.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
