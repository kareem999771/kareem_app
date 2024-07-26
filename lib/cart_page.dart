import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage(
      {super.key,
      required this.bookName,
      required this.bookId,
      required this.price, required this.image});

  final String bookName;
  final int bookId;
  final int price;
final String image;
  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int quantity = 1;
  String buy = "buy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "CHECKOUT",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.image,height: 430,),
            Text(
              "Book name: ${widget.bookName}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            Text(
              "Book price: ${widget.price}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            Container(
              width: 140,
              color: Colors.deepPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        quantity--;
                      }
                      );
                    },
                  ),
                  Text(
                    "$quantity",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),
           const  SizedBox(
              height: 20,
            ),
            Text(
              "TOTAL PRICE: ${widget.price * quantity}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  buy = "SUCCESS!";
                });
              },
              child: Container(
                height: 80,
                color: Colors.deepPurple,
                child: Center(
                  child: Text(
                    buy,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
