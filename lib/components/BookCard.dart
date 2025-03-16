import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  const BookCard({super.key});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  final ListCard = [
    {
      'image': 'https://images.pexels.com/photos/771324/pexels-photo-771324.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'simply dummy text of the printing and typesetting',
      'author': 'Chan REY'
    },
    {
      'image': 'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'simply dummy text of the printing and typesetting',
      'author': 'Chan'
    },
    {
      'image': 'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'simply dummy text of the printing and typesetting',
      'author': 'Chan REY ✅'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set a fixed height for horizontal scrolling
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // ✅ Enables horizontal scrolling
        shrinkWrap: true, // ✅ Prevents layout issues
        physics: BouncingScrollPhysics(), // ✅ Smooth scrolling effect
        itemCount: ListCard.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            height: 350,// ✅ Set width for horizontal items
            margin: EdgeInsets.only(right: 10, top: 10), // Adds spacing between cards
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  child: Image.network(
                    ListCard[index]['image'] ?? '',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  ListCard[index]['title'] ?? '',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF212f3d)),
                ),
                Text(
                  ListCard[index]['author'] ?? '',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
