import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  const BookCard({super.key});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  final List<Map<String, String>> ListCard = [
    {
      'image':
          'https://images.pexels.com/photos/771324/pexels-photo-771324.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Chan REY'
    },
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Chan'
    },
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Chan REY ✅'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280, // ✅ Increased height to fit content properly
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // ✅ Enables horizontal scrolling
        shrinkWrap: true, // ✅ Prevents layout issues
        physics: const BouncingScrollPhysics(), // ✅ Smooth scrolling effect
        itemCount: ListCard.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150, // ✅ Set width for each book card
            margin: const EdgeInsets.only(
                right: 10, top: 10), // ✅ Adds spacing between cards
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // ✅ Rounded corners for image
                  child: Image.network(
                    ListCard[index]['image'] ?? '',
                    height: 180, // ✅ Adjusted image height
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8), // ✅ Spacing
                Expanded(
                  // ✅ Prevents overflow by allowing text to take available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ListCard[index]['title'] ?? '',
                        maxLines: 2, // ✅ Prevents text overflow
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF212f3d),
                        ),
                      ),
                      const SizedBox(height: 4), // ✅ Spacing
                      Text(
                        ListCard[index]['author'] ?? '',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
