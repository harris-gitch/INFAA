import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text('Offer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold

                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 5.0
                  ),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/transportation_2.png',
                                width: 80.0,
                                height: 80.0,)
                          ),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            decoration:BoxDecoration(
                              color: const Color(0xffe69135),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(onPressed: (){},
                              child: const Text("Transport",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),),),
                          ),
                        ],
                      ),
                      Row(

                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/salary.png',
                                width: 80.0,
                                height: 80.0,)
                          ),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            decoration:BoxDecoration(
                              color: const Color(0xffe69135),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(onPressed: (){},
                              child: const Text("Funding",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),),),
                          ),
                        ],
                      ),
                      Row(

                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/dish.png',
                                width: 80.0,
                                height: 80.0,)
                          ),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            decoration:BoxDecoration(
                              color: const Color(0xffe69135),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(onPressed: (){},
                              child: const Text("Iftar saim",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),),),
                          ),
                        ],
                      ),
                      Row(

                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/food-donation.png',
                                width: 80.0,
                                height: 80.0,)
                          ),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            decoration:BoxDecoration(
                              color: const Color(0xffe69135),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(onPressed: (){},
                              child: const Text("Tabaro3 bi T3am",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),),),
                          ),
                        ],
                      ),
                      Row(

                        children: [
                          Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/crescent.png',
                                width: 80.0,
                                height: 80.0,)
                          ),
                          Container(
                            height: 70.0,
                            width: 300.0,
                            decoration:BoxDecoration(
                              color: const Color(0xffe69135),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: MaterialButton(onPressed: (){},
                              child: const Text("other",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }

}