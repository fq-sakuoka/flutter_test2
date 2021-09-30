import 'package:flutter/material.dart';
import 'package:flutter_provider/a_page.dart';
import 'package:flutter_provider/data_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer <DataModel>(
                    builder: (context, model, child) {
                      final _controller = TextEditingController.fromValue(
                        TextEditingValue(
                          text: model.text,
                          selection: TextSelection.collapsed(offset: model.text.length),
                        ),
                      );
                      return TextFormField(
                        controller: _controller,
                        autofocus: true,
                        maxLength: 10,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.face),
                          hintText: 'Textを入力してください。',
                          labelText: '必須テキスト*',
                        ),
                        onChanged: (text) {
                          model.onTextUpdate(text);
                        },
                      );
                    }
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) {
                              return APage();
                            }
                        )
                      );
                    },
                    child: Text("A Pageへ")
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}