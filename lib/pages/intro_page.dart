import 'package:flutter/material.dart';
import 'package:my_approject617/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "img/nikei.jpg",
                  height: 300,
                  width: 500,
                ),
              ),
          

          const Text(
            'BEL-AIR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.pink,
            ),
          ),

          const Text(
            'Brand new sneakers and custom kicks made with premium quality',
            style: TextStyle(
              fontSize: 15,
              color: Colors.yellow,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 30),

          GestureDetector(
            onTap: () => Navigator.push(
              context,
               MaterialPageRoute(
                builder: (context) => const HomePage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text('SHOP NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                ),
              ),
            ),
            ],
          ),
       ),
      )
    );
   }
  }