import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  Categories({super.key});
  final ListCate =  [
    'Name Title',
    'Age',
    'Gender',
    'Currently',
    'Address',
    'Email'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true, // Prevents infinite height error
      physics: BouncingScrollPhysics(), // Smooth scrolling
      itemCount: ListCate.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            // color: Colors.pink,
            child: Text(ListCate[index], style: TextStyle(fontSize: 16),),
          ),
        );
      },
    );
  }
}
