import 'package:flutter/material.dart';

import '../../../widgets/chip.dart';
import '../../../widgets/search_header.dart';
import 'item_card.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key, this.type = ''});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SearchHeader(
          title: type,
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                child: Row(
              children: [
                ChipFilter(
                  text: 'type01',
                ),
                ChipFilter(
                  text: 'type02',
                ),
                ChipFilter(
                  text: 'type03',
                )
              ],
            )),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ItemCard();
            },
            childCount: 20,
          ),
        ),
      ]),
    );
  }
}
