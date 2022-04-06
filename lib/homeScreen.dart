import 'package:flutter/material.dart';
import 'package:infaa/service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(' assets/back.png '),
          ),
        ),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/welcome.png"),
              Container(
                color: Color(0xffe69135),
                margin: EdgeInsets.all(65),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {


              Navigator.of(context).push(MaterialPageRoute(builder: (c) => Service()));

                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
