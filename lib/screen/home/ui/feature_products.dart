import 'package:flutter/material.dart';

class FeatureProducts extends StatefulWidget{
  const FeatureProducts({super.key});

  @override
  _FeatureProductsState createState()=> _FeatureProductsState();
}
class _FeatureProductsState extends State<FeatureProducts>{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20),
          child: const Text("Feature Products",
            style: TextStyle(
              color: Colors.red,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context,index){
              return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Product Name"),
              );
            }
          ),
        )
      ],
    );
  }
}