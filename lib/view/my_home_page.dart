import 'package:flutter/material.dart';
import '../controller/a_very_deep_widget_tree.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Provider Explained to Beginners'),
        ),
        body: Center(
          child: AVeryDeepWidgetTree(),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

class AVeryDeepWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ‘Provider.of’, just like Consumer needs to know the type of the model.
    // We need to specify the model ‘CountingTheNumber’.
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        padding: const EdgeInsets.all(
          10.0,
        ),
        children: <Widget>[
          Text(
            'This Text are on the top',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          //now we are going to build a very deep widget tree
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This widget is below Text.',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Press the button below to see text changes:',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  // However, the whole top widgets will remain unaffected when state changes
                  ColumnClass(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
