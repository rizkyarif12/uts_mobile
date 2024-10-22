import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Tempatkan di sini
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20),
                        Text(
                          'Rizky Arifiansyah',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+6285767485931',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          'assets/profil.jpeg'), // Pastikan gambar ada di folder assets
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Account Type', 'FULL SERVICE'),
                  _buildProfileOption('Account Settings', ''),
                  _buildProfileOption('LinkAja Syariah', 'Not Active'),
                  _buildProfileOption('Payment Method', ''),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Email', 'rizkyarifiansyah@gmail.com'),
                  _buildProfileOption('Security Question', 'Set'),
                  _buildProfileOption('PIN Settings', ''),
                  _buildProfileOption('Language', 'English'),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Terms of Service', ''),
                  _buildProfileOption('Privacy Policy', ''),
                  _buildProfileOption('Help Center', ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build profile option items
  Widget _buildProfileOption(String title, String subtitle) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          if (subtitle.isNotEmpty)
            Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
      onTap: () {},
    );
  }
}
