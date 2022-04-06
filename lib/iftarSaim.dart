import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infaa/demand.dart';

class Iftar_Saim extends StatefulWidget{
  @override
  State<Iftar_Saim> createState() => _Iftar_SaimState();
}

class _Iftar_SaimState extends State<Iftar_Saim> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff542a7d),
        elevation: 0.0,
        titleSpacing: 20.0,
        leading: IconButton(icon: const Icon(Icons.arrow_back) ,onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (c) => Demande(),
          ));
        },),
        title: const Text("Iftar Saim",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Color(0xffdaa520),
              child: Icon(
                Icons.search,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Color(0xffdaa520),
              child: Icon(
                Icons.add,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    body: ListView.separated(itemBuilder: (context, index) =>BuildItemDarrahma(),
        separatorBuilder: (context,index)=>const SizedBox(
          height: 20.0,
        ),
        itemCount: 15),
    );

  }
  Widget BuildItemDarrahma()=>Container(
   margin: const EdgeInsetsDirectional.only(
      top: 10

    ),
    padding: const EdgeInsets.all(3.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Color(0xffd4b01e))
    ),
    child: Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 20,
        start: 20.0,
        end: 20.0,
        bottom: 20.0
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://media.istockphoto.com/photos/friends-linking-arms-in-unity-picture-id1199706305?s=612x612"),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("name of charit",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  )),
              Row(
                children: const [
                  Text("Rating:",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      )),
                  Text("1.0",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal
                    ),)
                ],
              ),
              Row(
                children: [
                  const Text("Address",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                      )),
                  Container(
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.location_on,color: Color(0xffe69135),)))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}