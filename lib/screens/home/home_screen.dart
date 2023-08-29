import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_market_ui_review/models/product.dart';
import 'package:flutter_carrot_market_ui_review/screens/home/components/product_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text('좌동'),
              const SizedBox(width: 4.0),
              const Icon(
                CupertinoIcons.chevron_down,
                size: 15.0,
                color: Colors.grey,
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {},
              color: Colors.grey,
            ),
            IconButton(
              icon: Icon(CupertinoIcons.list_dash),
              onPressed: () {},
              color: Colors.grey,
            ),
            IconButton(
              icon: Icon(CupertinoIcons.bell),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              height: 0,
              indent: 16,
              endIndent: 16,
              color: Colors.grey,
            ),
            itemBuilder: (context, index) {
              return ProductItem(
                  product: productList[index],
              );
            },
            itemCount: productList.length,
        ),
    );
  }
}
