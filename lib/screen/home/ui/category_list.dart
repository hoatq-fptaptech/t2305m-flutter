import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget{
  const CategoryList({super.key});
  _CategoryListState createState() => _CategoryListState();
}
class _CategoryListState extends State<CategoryList>{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20),
          child: const Text("Category",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context,index){
              return const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Category Name"),
              );
            },
          ),
        )
      ],
    );
  }

}