import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_model.dart';

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context,listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text("B Page"),
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
                    //最初に戻る
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Text("Home Pageへ")
              ),
              ElevatedButton(
                  onPressed: () {
                    dataModel.onTextUpdate("");
                  },
                  child: Text("テキスト初期化")
              ),
              Text(
                  dataModel.text
              ),
            ],
          ),
        )
    );
  }

}