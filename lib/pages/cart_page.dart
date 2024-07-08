import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_layout/models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart Items',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              //pay now button

              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: Image.asset(
                            value.shopItems[index][2],
                            height: 34,
                          ),
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text(
                            'K ${value.shopItems[index][1]}',
                            style: TextStyle(fontSize: 24),
                          ),
                          trailing:IconButton(
                            onPressed: ()=>Provider.of<CartModel>(context, listen: false).removeItems(index), 
                            icon: Icon(Icons.cancel),),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //calculate total button.
              
            ],
          );
        },
      ),
    );
  }
}
