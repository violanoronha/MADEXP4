import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CardListViewDemo(),
  ));
}

class CardListViewDemo extends StatefulWidget {
  @override
  _CardListViewDemoState createState() => _CardListViewDemoState();
}

class _CardListViewDemoState extends State<CardListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Card Layout'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text('Card ${index + 1}'),
              subtitle: Text('Description of card ${index + 1}'),
              onTap: () {
                print('Tapped on Card ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
