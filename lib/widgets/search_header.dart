import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, this.title = ""});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      expandedHeight: 150,
      pinned: false,
      snap: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Color.fromARGB(255, 241, 241, 241),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 34),
                ),
                SearchBar(
                  elevation:
                      MaterialStateProperty.resolveWith((states) => null),
                  leading: const Icon(Icons.search),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
