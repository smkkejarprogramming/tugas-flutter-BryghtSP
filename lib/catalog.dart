import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modern Catalog'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CatalogItem(
            title: 'Product 1',
            image: 'https://source.unsplash.com/150x150/?product-image',
            price: '\$19.99',
          ),
          CatalogItem(
            title: 'Product 2',
            image: 'https://source.unsplash.com/150x150/?product-image',
            price: '\$29.99',
          ),
          CatalogItem(
            title: 'Product 3',
            image: 'https://via.placeholder.com/150',
            price: '\$39.99',
          ),
          CatalogItem(
            title: 'Product 4',
            image: 'https://via.placeholder.com/150',
            price: '\$49.99',
          ),
          CatalogItem(
            title: 'Product 5',
            image: 'https://via.placeholder.com/150',
            price: '\$59.99',
          ),
          CatalogItem(
            title: 'Product 6',
            image: 'https://via.placeholder.com/150',
            price: '\$69.99',
          ),
        ],
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  CatalogItem({required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image),
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}