import 'package:flutter/material.dart';

import '../../widgets/search_header.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SearchHeader(
            title: 'Categories',
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                child: Text('test'),
              );
            }),
          )
        ],
      ),
    );
  }
}
