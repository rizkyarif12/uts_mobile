import 'package:flutter/material.dart';
import 'package:uts_mobile/widget/autoScrollBanner.dart'; // Jika kamu juga menggunakan Carousel

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              _buildHeaderImage(),
              _buildTopBar(),
              _buildCard(),
            ],
          ),
          const SizedBox(height: 10),
          _buildActionMenu(),
          const SizedBox(height: 10),
          _buildGridMenu(),
          const SizedBox(height: 10), // Space before the banner
          AutoScrollBanner(), // Panggil AutoScrollBanner di sini
// Panggil AutoScrollBanner di sini
        ],
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/78786.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Positioned(
      top: 70,
      left: 15,
      right: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildImageContainer('assets/LinkAja.png'),
          Row(
            children: [
              _buildIconContainer(Icons.favorite,
                  Colors.grey), // Mengubah warna menjadi abu-abu
              const SizedBox(width: 10),
              _buildIconContainer(Icons.headset_mic,
                  Colors.grey), // Mengubah warna menjadi abu-abu
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Positioned(
      top: 140,
      left: 12,
      right: 12,
      child: SizedBox(
        width: 360,
        height: 150,
        child: Card(
          color: Colors.red[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi, Rizky Arifiansyah",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    _buildBalanceCard(
                        "Your Balance", "Rp 9.747"), // Tanpa ikon uang
                    const SizedBox(width: 10),
                    _buildBalanceCard("Bonus Balance", "0",
                        showMoneyIcon: true), // Dengan ikon uang
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionMenu() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      margin: const EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionButton(Icons.add_circle_outline, "TopUp"),
          _buildActionButton(Icons.outbound_outlined, "CashOut"),
          _buildActionButton(Icons.send_outlined, "Send Money"),
          _buildActionButton(Icons.grid_view_outlined, "See All"),
        ],
      ),
    );
  }

  Widget _buildGridMenu() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        childAspectRatio: 0.75,
        children: [
          _buildGridItem(Icons.phone_iphone, "Pulsa/Data"),
          _buildGridItem(Icons.electrical_services, "Electricity"),
          _buildGridItem(Icons.tv, "Cable TV & Internet"),
          _buildGridItem(Icons.credit_card, "Kartu Uang Elektronik"),
          _buildGridItem(Icons.church, "Gereja"),
          _buildGridItem(Icons.volunteer_activism, "Infaq"),
          _buildGridItem(Icons.volunteer_activism, "Other Donations"),
          _buildGridItem(Icons.more_horiz, "More"),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String assetPath) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(2, 2),
          ),
        ],
      ),
    );
  }

  Widget _buildIconContainer(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Icon(icon,
          color: color), // Menggunakan warna yang diberikan sebagai parameter
    );
  }

  Widget _buildBalanceCard(String title, String amount,
      {bool showMoneyIcon = false}) {
    return Container(
      width: 136,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 5),
          Row(
            children: [
              if (showMoneyIcon)
                const Icon(Icons.currency_exchange,
                    color:
                        Colors.yellow), // Tampilkan ikon uang jika diperlukan
              Padding(padding: const EdgeInsets.only(right: 5)),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_circle_right, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.black38),
          onPressed: () {},
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildGridItem(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Warna bayangan
                blurRadius: 4.0, // Radius blur bayangan
                spreadRadius: 1.0, // Radius penyebaran bayangan
                offset: const Offset(
                    0, 2), // Posisi bayangan (horizontal, vertikal)
              ),
            ],
          ),
          child: Center(
            // Mengatur ikon agar tetap di tengah
            child: Icon(icon, size: 25, color: Colors.red),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 11),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
