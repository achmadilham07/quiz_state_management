// todo-2: create a controller
import 'package:flutter/widgets.dart';
import 'package:quiz_state_management/model/product.dart';

class FavoriteController extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void toggleFavorite(Product product) {
    if (isFavorite(product)) {
      _products.remove(product);
    } else {
      _products.add(product);
    }
    notifyListeners();
  }

  bool isFavorite(Product product) {
    return _products.contains(product);
  }
}
