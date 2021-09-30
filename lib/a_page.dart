import 'package:flutter/material.dart';
import 'package:flutter_provider/data_model.dart';
import 'package:provider/provider.dart';

import 'b_page.dart';

class APage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("A Page"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer <DataModel>(
                    builder: (context, model, child) {
                      return Text(model.text);
                    }
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return BPage();
                              }
                          )
                      );
                    },
                    child: Text("B Pageへ")
                )
              ],
            ),
          )
      ),
    );
  }

}