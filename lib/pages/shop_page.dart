import 'package:flutter/material.dart';
import 'package:my_approject617/components/shoe_tile.dart';
import 'package:my_approject617/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',
              style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
                ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('We Deliver best Quality products',
           style: TextStyle(color: Colors.grey[600]),
           ),
          ),

           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Cool Picks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All',
                  style: 
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                Shoe shoe = Shoe(
                  name: 'Air Jordan', 
                  price: '240', 
                  description: 'awesome shoe', 
                  imagePath: "img/Airjordan.jpeg",); 
                return ShoeTile(
                  shoe: shoe, 
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Colors.white,
            ), 
           ),

      ],              
    );
  }
}