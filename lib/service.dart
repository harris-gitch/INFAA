import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infaa/demand.dart';
import 'package:infaa/offer.dart';

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/back.png"), fit: BoxFit.fill)),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Chose a service',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
          Divider(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Demand",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  width: 100,
                  height: 40,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) => Demande()));
                },
              ),
              MaterialButton(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Offer",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  width: 100,
                  height: 40,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) => Offer()));
                },
              )
            ],
          ),
          const Divider(height: 50),
          MaterialButton(
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "General",
                style: TextStyle(fontSize: 18.0),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(250, 243, 198, 108),
                    Color.fromARGB(250, 240, 160, 2),
                    Color.fromARGB(250, 248, 211, 137)
                  ])),
              width: 250,
              height: 50,
            ),
            onPressed: () {},
          )
        ],
      )),
    ));
  }
}
