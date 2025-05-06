import 'package:flutter/material.dart';
import 'booking.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4A148C),
              Color(0xFF6A1B9A),
              Color(0xFF8E24AA),
              Color(0xFFD500F9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello,",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w300)),
                        SizedBox(height: 4),
                        Text("Bilal Gujjar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("images/boy.jpg",
                          height: 75, width: 75, fit: BoxFit.cover),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Divider(color: Colors.white70),
                const SizedBox(height: 20.0),
                const Text("Services",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800)),
                const SizedBox(height: 20.0),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 3 / 3.5,
                  children: [
                    serviceCard("images/seo.png", "SEO"),
                    serviceCard("images/market.png", "Marketing"),
                    serviceCard("images/shopi.png", "Shopify"),
                    serviceCard("images/wordpress.png", "WordPress"),
                    serviceCard("images/emails.png", "Email Mktg"),
                    serviceCard("images/logo.png", "Logo Design"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget serviceCard(String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Booking(serviceName: title),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 70, width: 70, fit: BoxFit.cover),
            const SizedBox(height: 12),
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}
