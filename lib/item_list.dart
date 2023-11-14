import 'package:flutter/material.dart';
import 'package:inventory/item_model.dart';
import 'package:inventory/screens/shoplist_form.dart';
import 'package:inventory/widgets/left_drawer.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Menu'),
        backgroundColor: Color.fromARGB(255, 182, 68, 63),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return ListTile(
            title: Text('Nama Item: ${product.name}'),
            subtitle: Text('Jumlah: ${product.amount}'),
            trailing: Text('Deskripsi: ${product.description}'),
            onTap: () {
              // Handle item tap if needed
            },
          );
        },
      ),
    );
  }
}
