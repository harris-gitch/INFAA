import 'package:flutter/material.dart';

import 'demand.dart';

class Transport extends StatefulWidget {
  const Transport({Key? key}) : super(key: key);

  @override
  State<Transport> createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  TextEditingController _controllerCurrent = TextEditingController();
  TextEditingController _controllerDestination = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff542a7d),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (c) => Demande(),
                  ));

                })),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/BACKfull.png"),
              ),
            ),
            child: Center(
                child: Column(
              children: [
                Container(
                  child: Image.asset("assets/logo_infaa.png"),
                ),
                Container(
                  padding: EdgeInsets.all(4),

                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your current place  ",
                        prefix: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(""),
                        )),
                    maxLength: 40,
                    keyboardType: TextInputType.streetAddress,
                    controller: _controllerCurrent,
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.all(4),

                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your destination place",
                        prefix: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(""),
                        )),
                    maxLength: 40,
                    keyboardType: TextInputType.number,
                    controller: _controllerDestination,
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff542a7d),
                  ),
                  padding: EdgeInsets.all(4),
                  width: 350,
                  child: MaterialButton(
                    onPressed: () {
                      /*
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPControllerScreen(
                          phone: _controller.text,
                          codeDigits: dialCodeDigits)));
                */
                    },
                    child: Text("Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white,
                            fontSize: 25.0
                        )),
                  ),
                )
              ],
            ))));
  }
}
