import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EcommerceApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class EcommerceApp extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'mobile', 'description': '\$ 12'},
    {'name': 'Car', 'description': '\$ 15034'},
    {'name': 'watch', 'description': '\$ 374'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products List',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              products[index]['name']!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black87),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailsPage(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class ProductDetailsPage extends StatelessWidget {
  final Map<String, String> product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product['name']!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black87,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              product['name']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16), // Add spacing between widgets
            Text(
              product['description']!,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
