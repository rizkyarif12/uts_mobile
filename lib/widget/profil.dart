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
            SizedBox(height: 40),

            // Container untuk Profile (Nama dan Foto)
            Center(
              child: Container(
                width: 380, // Sesuaikan width
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.circular(10), // Radius sudut
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          '+6285767485932',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/profil.jpeg'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Card 1 dengan tampilan yang sama dengan "Keluar"
            Container(
              width: 380,
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildProfileOption('Account Type', 'FULL SERVICE'),
                  _buildProfileOption('Account Settings', ''),
                  _buildProfileOption('LinkAja Syariah', 'Not Active'),
                  _buildProfileOption('Payment Method', ''),
                ],
              ),
            ),

            // Card 2 dengan tampilan yang sama dengan "Keluar"
            Container(
              width: 380,
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildProfileOption('Email', 'rizkyarif@gmail.com'),
                  _buildProfileOption('Security Question', 'Set'),
                  _buildProfileOption('PIN Settings', ''),
                  _buildProfileOption('Language', 'English'),
                ],
              ),
            ),

            // Card 3 dengan tampilan yang sama dengan "Keluar"
            Container(
              width: 380,
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildProfileOption('Terms of Service', ''),
                  _buildProfileOption('Privacy Policy', ''),
                  _buildProfileOption('Help Center', ''),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Logout
            Center(
              child: InkWell(
                onTap: () {
                  // Aksi saat tombol logout ditekan
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Logout'),
                        content: const Text('Apakah anda ingin keluar?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Batalkan logout
                            },
                            child: const Text('Tidak'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Lakukan aksi logout
                              // Tambahkan aksi logout Anda di sini
                            },
                            child: const Text('Ya'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Keluar',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20), // Spasi setelah tombol
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
