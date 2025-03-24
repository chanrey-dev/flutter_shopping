import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Profile Info Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Som Chamroeun",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text("example@gmail.com",
                      style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10, top: 10),
                    child: const ProfileOptions(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),

          // Profile Options
        ],
      ),
    );
  }
}

// Profile Options List
class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfileOption(icon: Icons.person, title: "Edit Profile"),
        ProfileOption(icon: Icons.location_on, title: "Manage Addresses"),
        ProfileOption(icon: Icons.credit_card, title: "Payment Methods"),
        ProfileOption(icon: Icons.notifications, title: "Notifications"),
        ProfileOption(icon: Icons.security, title: "Security"),
      ],
    );
  }
}

// Profile Option Item
class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileOption({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black87),
          title: Text(title, style: const TextStyle(fontSize: 14)),
          trailing: const Icon(Icons.arrow_forward_ios,
              size: 10, color: Colors.black54),
          onTap: () {},
        ),
        const Divider(height: 1, thickness: 0.5, color: Colors.grey),
      ],
    );
  }
}
