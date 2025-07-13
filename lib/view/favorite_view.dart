import 'package:flutter/material.dart';
import 'package:quiz_state_management/widget/product_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Favorite View'),
      ),
      // todo-4: consume the state from the controller
      body: ListView.builder(
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
