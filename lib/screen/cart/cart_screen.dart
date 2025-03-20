import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2305m_flutter/bloc/bloc.dart';
import 'package:t2305m_flutter/model/cart_item.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<Bloc>(context,listen: false);
    List<CartItem> items = bloc.getCartItems;
    return Scaffold(
      body: Text("Count: "+items.length.toString()),
    );
  }
}