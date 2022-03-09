import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final cart;
  // ignore: prefer_typing_uninitialized_variables
  final sum;
  // ignore: use_key_in_widget_constructors
  const MyCart(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  child: Image(
                    image: AssetImage(cart[index].image),
                    fit: BoxFit.cover,
                    width: 100,
                    height: 50,
                  ),
                ),
                title: Text(cart[index].name),
                trailing: Text(
                  "Gh₵${cart[index].price}",
                  style: const TextStyle(fontSize: 22),
                ),
                onTap: () {},
              );
            },
            separatorBuilder: (content, index) {
              return const Divider();
            },
            itemCount: cart.length,
            shrinkWrap: true,
          ),
          const Divider(),
          Text('Gh₵$sum')
        ],
      ),
    );
  }
}
