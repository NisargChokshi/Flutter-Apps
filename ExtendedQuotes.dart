// Developed on DartPad
// Author: Nisarg Chokshi

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class Quote {
  String line;
  String author;

  Quote({this.line, this.author});
} // Quote

class QuoteList extends StatefulWidget {
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        line: "The Purpose of our lives is to be Happy !",
        author: "Dalai Lama"),
    Quote(
        line: "Be the Change that you wish to see in the World !",
        author: "Mahatma Gandhi"),
    Quote(
        line:
            "Intellectual Growth should commence at Birth and Ease only at Death !",
        author: "Albert Einstein"),
  ]; // Quotes

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Monday Morning"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ), // AppBar
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState((){
              quotes.remove(quote);
            });
          }
        )).toList(),
      ), // Column
    ); // Scaffold
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  
  QuoteCard({this.quote, this.delete});

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.line,
              style: TextStyle(
                  color: Colors.red[900], fontSize: 18.0), //TextStyle
            ), // Text
            SizedBox(height: 6.0),
            Text(
              '- ' + quote.author,
              style: TextStyle(
                  color: Colors.red[800], fontSize: 14.0), //TextStyle
            ), // Text
            SizedBox(height:8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text("Delete Quote"),
              icon: Icon(Icons.delete),
              color: Colors.red[900],
              textColor: Colors.red[100],
            ), // Flatbutton.icon
            
          ], // Widget
        ), // Column
      ), // Padding
    ); // Card
  }
}
