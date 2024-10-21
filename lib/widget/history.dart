import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Pending"),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Menggantikan `primary`
                    foregroundColor: Colors.red, // Menggantikan `onPrimary`
                    elevation: 0,
                  ),
                  child: const Text("Done"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildTransactionItem("Pay Merchant", "Rp 45.400",
                    "15 Sep 2024, 17:28 WIB", "Indomaret_purchase"),
                _buildTransactionItem("Pay Merchant", "Rp 55.000",
                    "15 Sep 2024, 17:28 WIB", "Indomaret_purchase"),
                _buildTransactionItem("Top Up from Bank", "Rp 100.000",
                    "15 Sep 2024, 17:26 WIB", "Top Up"),
                _buildTransactionItem("Pay QRIS", "Rp 21.000",
                    "31 Aug 2024, 11:49 WIB", "SBY - MOG TP S1"),
                _buildTransactionItem("Pay QRIS", "Rp 42.000",
                    "31 Aug 2024, 11:50 WIB", "SBY - MOG TP S2"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(
      String title, String amount, String date, String subtitle) {
    return ListTile(
      leading: Icon(Icons.check_circle_outline, color: Colors.green),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date),
          Text(subtitle),
        ],
      ),
      trailing:
          Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
