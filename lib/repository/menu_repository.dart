import 'dart:collection';
import '../data/products.dart';

class MenuRepositoryDummyImpl implements MenuRepository {
  final _items = [
    Product(" Pasta ", 6.5, "Main dishes"),
    Product(" Fish ", 8, ""),
    Product(" Steak ", 8.5, ""),
    Product(" Chips ", 6, "Side dishes"),
    Product(" Salade ", 5, ""),
    Product(" Fruit ", 5, "Desserts dishes"),
    Product(" Ice cream ", 4.5, "")

  ];
  @override
  UnmodifiableListView get items {

   return UnmodifiableListView(_items);
  }
}
abstract class MenuRepository {
  UnmodifiableListView get items;
}
