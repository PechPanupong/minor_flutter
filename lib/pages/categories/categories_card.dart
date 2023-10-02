import 'package:flutter/material.dart';
import 'package:minor_flutter/pages/categories/item/items_list_view.dart';

import '../../models/categories_model.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.data});

  final CategoriesItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => ItemsListView(
                      type: data.title,
                    )),
          );
          print(data.title);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data.title,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                          width: double.infinity, child: Text('${data.count}'))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
