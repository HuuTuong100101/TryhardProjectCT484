import 'package:flutter/material.dart';
import 'package:goldshop/widgets/CardProduct.dart';

class AllProduct extends StatelessWidget {
  AllProduct({super.key});
  
  final List<Map<String, dynamic>> _FeaturedProducts = [
    {
      'name': 'Hello Adidas',
      'image': 'assets/images/Adidas1.png',
      'price': '100'
    },
    {
      'name': 'Hello Converse',
      'image': 'assets/images/Converse-removebg.png',
      'price': '200'
    },
    {
      'name': 'Hello Nike',
      'image': 'assets/images/Nike-removebg-preview.png',
      'price': '200'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Home');
          },
        ),
      ),

      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 180 / 250,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            // ignore: prefer_const_literals_to_create_immutables
            children: List.generate(
              _FeaturedProducts.length, (i) => CardProduct(
                  name: _FeaturedProducts[i]['name'], 
                  image: _FeaturedProducts[i]['image'], 
                  price: _FeaturedProducts[i]['price']
                )
            )
          ),
        ),
      ),
    );
  }
}
