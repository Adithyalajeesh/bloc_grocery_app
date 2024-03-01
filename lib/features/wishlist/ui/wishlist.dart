import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter_bloc_tutorial/features/wishlist/ui/wishlist_tile.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist Items'),
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        bloc: wishlistBloc,
        listener: (context, state) {
          // Add any necessary UI updates based on state changes
        },
        builder: (context, state) {
          if (state is WishlistSuccessState) {
            return ListView.builder(
              itemCount: state.wishlistItems.length,
              itemBuilder: (context, index) {
                return WishlistTile(
                  wishlistBloc: wishlistBloc,
                  productDataModel: state.wishlistItems[index],
                );
              },
            );
          }
          return const SizedBox(); // Handle other states if needed
        },
      ),
    );
  }
}
