import 'package:flutter/material.dart';
import 'package:shoping_chart/model/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Product> products  = [
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),
    Product(img: 'assets/images/tshirt.png',
        tittle: 'T-Shirt',
        subtittle: "black,size:XL",
        qty: '',
        price: '\$120'
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Simple Shoping Cart',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 22),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: products.length,
          itemBuilder: (context, index) {
            return CartItem(
            product: products[index],
            );
          },),
    );
  }
}

class CartItem extends StatelessWidget {

  final Product product;
 const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
          Image.asset(
          product.img,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
            const SizedBox(width: 16,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.tittle,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 2,),
                Text(
                  product.subtittle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey
                  ),
                ),
              ],
            )
            ),

            Text(
              product.price,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )

            ]
        ),
      ),

    );
  }
}
