import 'package:flutter/material.dart';
import 'package:inventory/models/product.dart';
import 'package:inventory/widgets/left_drawer.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Detail'),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Menu: ${widget.product.fields.menu}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Amount: ${widget.product.fields.amount}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Description: ${widget.product.fields.description}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Price: ${widget.product.fields.price}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              'Category: ${widget.product.fields.category}',
              style: const TextStyle(fontSize: 18.0),
            ),
            Image.network(
              widget.product.fields.image,
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}
