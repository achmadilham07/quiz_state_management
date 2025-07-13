import 'package:flutter/material.dart';
import 'package:quiz_state_management/model/product.dart';
import 'package:quiz_state_management/widget/product_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home View'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/favorite'),
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductItem(
            product: product,
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: product.id);
            },
          );
        },
      ),
    );
  }
}
