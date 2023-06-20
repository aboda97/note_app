import 'package:flutter/material.dart';

import 'item_container_note.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CustomItemContanierNote(),
          );
        }));
  }
}
