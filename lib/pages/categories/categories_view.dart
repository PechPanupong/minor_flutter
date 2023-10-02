import 'package:flutter/material.dart';

import '../../models/categories_model.dart';
import '../../widgets/search_header.dart';
import 'categories_card.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesItem> listCategories = CategoriesItem.getList();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SearchHeader(
            title: 'Categories',
          ),
          SliverPadding(
            padding: const EdgeInsets.all(2),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              children: List.generate(listCategories.length, (index) {
                return CategoriesCard(data: listCategories[index]);
              }),
            ),
          )
        ],
      ),
    );
  }
}
