import 'dart:collection';
import '../data/products.dart';

class MenuRepositoryDummyImpl implements MenuRepository {
  final _items = [
    Product(" Pasta ", 6.5, 0),
    Product(" Fish ", 8, 0),
    Product(" Steak ", 8.5, 0),
  ];
  @override
  UnmodifiableListView get items => UnmodifiableListView(_items);
}
abstract class MenuRepository {
  UnmodifiableListView get items;
}
