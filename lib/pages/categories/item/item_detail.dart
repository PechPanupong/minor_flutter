import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minor_flutter/widgets/carousel.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back)),
        Carousel(height: 200, children: [
          Container(
            width: double.infinity,
            color: Colors.blueGrey,
            child: Center(child: Text('item1')),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: Center(child: Text('item2')),
          ),
          Container(
            width: double.infinity,
            color: Colors.yellow,
            child: Center(child: Text('item3')),
          ),
        ]),
        Container(
          child: Column(
            children: [],
          ),
        )
      ]),
    );
  }
}
