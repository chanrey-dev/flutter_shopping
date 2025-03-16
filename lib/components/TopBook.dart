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
          'https://images.pexels.com/photos/2857040/pexels-photo-2857040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Simply',
      'price': '\$20.00',
    },
    {
      'image':
          'https://images.pexels.com/photos/1161538/pexels-photo-1161538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Text of the',
      'price': '\$30.00',
    },
    {
      'image':
          'https://images.pexels.com/photos/1161528/pexels-photo-1161528.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'Simply',
      'price': '\$45.00',
    },
    {
      'image':
          'https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&w=600',
      'title': 'typesetting',
      'price': '\$15.00',
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
        const SizedBox(height: 10),

        // Use Expanded to allow GridView to take available space
        Expanded(
          child: GridView.builder(
            itemCount: listTopBook.length,
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
                          fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Prevents overflow
                    ),
                    Text(
                      book['price'] ?? '',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
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
