import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel(
      {super.key,
      required this.children,
      this.height = 450.0,
      this.viewportFraction = 1,
      this.onPageChange,
      this.boxDecoration,
      this.enlargeCenterPage = false});

  final List<Widget> children;
  final double height;
  final double viewportFraction;
  final VoidCallbackAction? onPageChange;
  final BoxDecoration? boxDecoration;
  final bool? enlargeCenterPage;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  _setActiveDot(index, reason) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              height: widget.height,
              viewportFraction: widget.viewportFraction,
              enlargeCenterPage: widget.enlargeCenterPage,
              onPageChanged: _setActiveDot,
            ),
            items: widget.children,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          for (int index = 0; index < widget.children.length; index++)
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: index == currentIndex
                        ? const Color(0xff003CFF)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5))),
        ]),
      ],
    );
  }
}
