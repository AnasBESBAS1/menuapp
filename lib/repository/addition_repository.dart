import 'package:menu_app/data/addition.dart';

class AdditionRepositoryDummyImpl implements AdditionRepository {
  final _item = Addition(0);

  @override
  get item {
   return (_item);
  }
}
abstract class AdditionRepository {
   get item;
}
