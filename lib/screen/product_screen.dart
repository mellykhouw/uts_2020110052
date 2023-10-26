import 'package:flutter/material.dart';\

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.orange,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "KlontongShop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
