import 'package:dataclass/dataclass.dart';

part 'generic_data.g.dart';

@DataClass()
class Product<T> extends _$Product<T> {
  final String name;
  final T price;

  const Product({this.name, this.price});
}

@DataClass()
class Category<T> extends _$Category<T> {
  final List<Product<T>> products;

  const Category({this.products});
}
