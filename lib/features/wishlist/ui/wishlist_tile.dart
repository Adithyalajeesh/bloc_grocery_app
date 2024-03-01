import 'package:flutter/material.dart';
import 'package:flutter_bloc_tutorial/features/home/models/home_product_data_model.dart';
import 'package:flutter_bloc_tutorial/features/wishlist/bloc/wishlist_bloc.dart';

import '../bloc/wishlist_event.dart';

class WishlistTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;

  const WishlistTile({
    Key? key,
    required this.productDataModel,
    required this.wishlistBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productDataModel.name),
      subtitle: Text(productDataModel.description),
      trailing: IconButton(
        icon: const Icon(Icons.remove_circle),
        onPressed: () {
          wishlistBloc.add(WishlistRemoveItemEvent(
            productDataModel: productDataModel,
          ));
        },
      ),
    );
  }
}
