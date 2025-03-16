import 'package:flutter/material.dart';
import 'package:library_application/components/BookDetailScreen.dart';

class TopBook extends StatefulWidget {
  const TopBook({super.key});

  @override
  State<TopBook> createState() => _TopBookState();
}

class _TopBookState extends State<TopBook> {
  final List<Map<String, String>> listTopBook = [
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Pov Loav',
    },
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Pov Loav',
    },
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Pov Loav',
    },
    {
      'image':
          'https://images.pexels.com/photos/4170628/pexels-photo-4170628.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply dummy text of the printing and typesetting',
      'author': 'Pov Loav',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "New Arrivals",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xFF566573)),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 440, // Adjusted height to fit grid
          child: GridView.builder(
            itemCount: listTopBook.length,
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // Prevents double scroll
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Display 2 items per row
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85, // Adjusts item height
            ),
            itemBuilder: (context, index) {
              final book = listTopBook[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(book: book),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                      child: Image.network(
                        book['image'] ?? '',
                        height: 140, // Image height
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      book['title'] ?? '',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Prevents overflow
                    ),
                    Text(
                      book['author'] ?? '',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
