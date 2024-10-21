import 'package:flutter/material.dart';
// import 'carousel_slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Picture/78786.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 15,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('Picture/LinkAja.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4.0,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        _buildIconContainer(Icons.favorite),
                        SizedBox(width: 10),
                        _buildIconContainer(Icons.headset_mic),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
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
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                width: 136,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.all(
                                    8), // Menambahkan padding agar teks tidak terlalu dekat dengan tepi
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Your Balance",
                                        style: TextStyle(color: Colors.black)),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: const [
                                        Text("Rp 9.747",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                            width:
                                                5), // Menambahkan jarak antara teks dan ikon
                                        Icon(Icons.arrow_circle_right,
                                            color: Colors
                                                .red), // Menambahkan ikon panah
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: const EdgeInsets.all(5)),
                              const SizedBox(
                                  width:
                                      10), // Menambahkan jarak antara dua Container
                              Container(
                                width: 136,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.all(
                                    8), // Menambahkan padding agar teks tidak terlalu dekat dengan tepi
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Bonus Balance",
                                        style: TextStyle(color: Colors.black)),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: const [
                                        SizedBox(
                                            width:
                                                3), // Menambahkan jarak antara teks dan ikon
                                        Icon(Icons.currency_exchange_rounded,
                                            color: Colors.yellow),
                                        Padding(
                                            padding: const EdgeInsets.all(2)),
                                        Text("0",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                            width:
                                                5), // Menambahkan jarak antara teks dan ikon
                                        Icon(Icons.arrow_circle_right,
                                            color: Colors
                                                .red), // Menambahkan ikon panah
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(top: 10.0)),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 9.0),
            margin: EdgeInsets.symmetric(
                horizontal: 17.0), // Memberikan jarak kiri dan kanan
            decoration: BoxDecoration(
              color: Colors.white, // Mengubah warna menjadi putih
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.25), // Warna bayangan dengan opasitas
                  spreadRadius: 1, // Radius penyebaran bayangan
                  blurRadius: 5, // Radius blur bayangan
                  offset:
                      Offset(0, 3), // Posisi bayangan (horizontal, vertikal)
                ),
              ], // Menambahkan border warna hitam
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.black38),
                      onPressed: () {},
                      tooltip: "TopUp",
                    ),
                    const Text(
                      "TopUp",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14, // Ukuran font teks
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.outbound_outlined,
                          color: Colors.black38),
                      onPressed: () {},
                      tooltip: "CashOut",
                    ),
                    const Text(
                      "CashOut",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.send_outlined,
                          color: Colors.black38),
                      onPressed: () {},
                      tooltip: "Send Money",
                    ),
                    const Text(
                      "Send Money",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.grid_view_outlined,
                          color: Colors.black38),
                      onPressed: () {},
                      tooltip: "See All",
                    ),
                    const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
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
          ),
          // CarouselSliderWidget()
        ],
      ),
    );
  }

  Widget _buildIconContainer(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(2, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(icon, color: Colors.black38),
          const SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title) {
    return Card(
      color: Colors
          .transparent, // Mengatur warna latar belakang menjadi transparan
      elevation: 0, // Menghapus bayangan
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.red),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
