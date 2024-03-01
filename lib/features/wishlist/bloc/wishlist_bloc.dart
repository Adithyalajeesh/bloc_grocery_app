import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tutorial/features/home/models/home_product_data_model.dart';
import 'package:flutter_bloc_tutorial/features/wishlist/bloc/wishlist_event.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc_tutorial/features/wishlist/bloc/wishlist_event.dart';

import '../../../data/wishlist_items.dart';

//part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
      WishlistEvent event,
      ) async* {
    if (event is WishlistAddItemEvent) {
      wishlistItems.add(event.productDataModel);
      yield WishlistSuccessState(wishlistItems: wishlistItems);
    } else if (event is WishlistRemoveItemEvent) {
      wishlistItems.remove(event.productDataModel);
      yield WishlistSuccessState(wishlistItems: wishlistItems);
    }
  }
}
