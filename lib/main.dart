import 'package:flutter/material.dart';
import 'package:uts_mobile/widget/profil.dart';
import 'package:uts_mobile/widget/splashscreen.dart';
import 'package:uts_mobile/widget/history.dart';
import 'package:uts_mobile/widget/homepage.dart';
import 'package:uts_mobile/widget/qrscan.dart'; // Import the QR code scanner page
import 'package:uts_mobile/widget/inbox.dart'; // Import the Inbox page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    PlaceholderWidget(label: 'Pay'),
    InboxPage(), // Use the InboxPage here
    Profil(),
  ];

  void _onItemTapped(int index) async {
    if (index == 2) {
      // Navigate to QR code scanner
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QRCodeScannerPage()),
      );
      // Handle the scanned QR code result if needed
      if (result != null) {
        // For example, you can show a dialog or update the UI
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Scanned QR Code'),
            content: Text(result.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => _onItemTapped(2),
        child: Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final String label;
  const PlaceholderWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("$label page is under construction"),
    );
  }
}
