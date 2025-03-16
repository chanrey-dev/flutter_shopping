import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // color: Colors.black,
          border: Border.all(width: 2.0, color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            // Search Icon
            Icon(
              Icons.search,
              color: Colors.grey.shade600,
            ),
            const SizedBox(width: 8),

            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  border: InputBorder.none,
                ),
              ),
            ),

            // Mic Icon
            Icon(
              Icons.mic,
              color: Colors.grey.shade600,
            ),
            SizedBox(width: 5,),
            SizedBox(
              width: 1,
              height: 20,
              child: ColoredBox(
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5,),
            // Filter/Settings Icon
            Icon(
              Icons.tune,
              color: Colors.redAccent, // adjust color as desired
            ),
          ],
        ),
      ),
    );
  }
}
