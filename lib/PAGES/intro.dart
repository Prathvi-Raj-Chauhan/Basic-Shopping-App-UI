import 'package:flutter/material.dart';
import 'package:login_page_01/PAGES/home.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //ronaldo cover at top with logo
              Image.asset('lib/IMAGES/ronaldo2.png'),
              const SizedBox(height: 30),
              //logo title at ranaldo's mid
              Text(
                'NIKE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),

              Text(
                'Just Do It !',
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,

                  fontSize: 15,
                ),
              ),

              //start now button
              const SizedBox(height: 15),

              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Shop Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Black background
                    foregroundColor: Colors.white, // White text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ), // Button padding
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
