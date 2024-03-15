
import 'package:ecom_app/globla.dart';
import 'package:ecom_app/second_page.dart';
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
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child: Row(
          children: [
        ...allproducts.map(
          (e) => GestureDetector( 
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (ctx)=> second_page())
              );
            },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 330,
            width: 200,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 5,
                  spreadRadius: -2,
                  color: Colors.grey,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Expanded(flex: 2,
                 child: Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),   
                    image: DecorationImage(
                    image: NetworkImage(e['thumbnail']),
                    fit: BoxFit.cover, 
                    )
                   ),
                 )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                                                                bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${e['title']}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "${e['price']}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            RatingBarIndicator(
                              rating: e['rating'].toDouble(),

                                itemCount: 5,
                                itemSize: 25,
                                itemBuilder: (context, i) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  );
                                }),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
          ),
        ),
      ].toList()), ),
    );
  }
}
