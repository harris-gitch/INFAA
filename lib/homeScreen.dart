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
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/back.png"), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/wellcome.png"),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffe69135),
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {


                Navigator.of(context).push(MaterialPageRoute(builder: (c) => Service()));

                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
