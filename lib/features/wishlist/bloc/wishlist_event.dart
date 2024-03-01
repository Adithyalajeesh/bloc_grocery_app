import 'package:flutter/cupertino.dart';

import '../../home/models/home_product_data_model.dart';

@immutable
abstract class WishlistEvent {}

class WishlistAddItemEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  WishlistAddItemEvent({
    required this.productDataModel,
  });
}

class WishlistRemoveItemEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  WishlistRemoveItemEvent({
    required this.productDataModel,
  });
}
