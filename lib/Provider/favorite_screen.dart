import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favorite_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreen createState() => _FavoriteScreen();
}

class _FavoriteScreen extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    int currentvalue = 24;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<FavoriteProvider>(
          builder: (context, value, child) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          "lajddelfjzl;eakjfl;aij",
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (value.select == currentvalue) {
                                  value.increment();
                                } else {
                                  value.decrement();
                                }
                              },
                              icon: value.select == currentvalue
                                  ? const Icon(Icons.favorite_border_outlined)
                                  : const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )),
                          Text(value.select.toString())
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (value.select == currentvalue) {
                      value.increment();
                    } else {
                      value.decrement();
                    }
                  },
                  child: Text("Add"),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
