import 'package:flutter/material.dart';
import 'package:quiz_state_management/model/product.dart';

class DetailView extends StatelessWidget {
  final String productId;

  const DetailView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((product) => product.id == productId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Detail View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network(product.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.price,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.green[700],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.description,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 40),
                  // todo-opsional: check the product id on the controller. if product has been stored, change the icon to [favorite]. if not, change the icon to [favorite_border].
                  ElevatedButton.icon(
                    onPressed: () {
                      // todo-3: call the function/event from the controller
                    },
                    icon: Icon(Icons.favorite_border),
                    label: Text('Tambah ke Favorite'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      visualDensity: VisualDensity.comfortable,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
