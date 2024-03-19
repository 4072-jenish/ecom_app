import 'package:ecom_app/globla.dart';
import 'package:ecom_app/second_page.dart';
import 'package:ecom_app/wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page "),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_cart,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body:

    );
  }
