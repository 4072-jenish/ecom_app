import 'package:flutter/material.dart';
class second_page extends StatelessWidget {
  const second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
         leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
              
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black ,
          ),
        ),
       title: const Text("-------- Well Come ------",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://blog.hubspot.com/hs-fs/hubfs/ecommerce%20marketing.jpg?width=595&height=400&name=ecommerce%20marketing.jpg"),
            fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}

