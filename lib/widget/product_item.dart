import 'package:flutter/material.dart';
import 'package:quiz_state_management/model/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product, required this.onTap});

  final Product product;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(product.imageUrl),
          radius: 30,
        ),
        title: Text(product.name),
        subtitle: Text(product.price),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
