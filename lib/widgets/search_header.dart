import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, this.title = ""});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 190,
      flexibleSpace: FlexibleSpaceBar(title: Text(title)),
    );
  }
}
