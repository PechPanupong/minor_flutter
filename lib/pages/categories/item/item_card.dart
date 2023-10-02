import 'package:flutter/material.dart';
import 'package:minor_flutter/pages/categories/item/item_detail.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ItemDetail()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  height: 100,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10))),
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'menu1',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Text(
                              'price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 22),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart_outlined))
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
