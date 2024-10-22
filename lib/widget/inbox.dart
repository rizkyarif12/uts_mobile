import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Inbox',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 4.0,
                ),
                insets: EdgeInsets.symmetric(horizontal: 128),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Notifikasi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Informasi',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  NotificationCard(
                    title: 'Notifikasi 1',
                    date: '20 Okt 2024',
                    content: 'Isi dari notifikasi pertama.',
                  ),
                  NotificationCard(
                    title: 'Notifikasi 2',
                    date: '21 Okt 2024',
                    content: 'Isi dari notifikasi kedua.',
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  NotificationCard(
                    title: 'Informasi 1',
                    date: '22 Okt 2024',
                    content: 'Isi dari informasi pertama.',
                  ),
                  NotificationCard(
                    title: 'Informasi 2',
                    date: '23 Okt 2024',
                    content: 'Isi dari informasi kedua.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const NotificationCard({
    required this.title,
    required this.date,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey[300]),
            SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
