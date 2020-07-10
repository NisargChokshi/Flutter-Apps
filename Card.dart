// Developed on DartPad
// Author: Nisarg Chokshi

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class Quote {
  String line;
  String author;

  // Method 1 - Default
//   Quote(String quote, String author) {
//     this.quote = quote;
//     this.author = author;
//   }

  // Method 2 - Named Parameters
  Quote({this.line, this.author});
} // Quote

// Method 1 - Default
// Quote q1 = Quote("This is a Quote", "Nisarg Chokshi");

// Method 2 - Named Parameters
// Quote q2 = Quote(line:"This is a Quote", author:"Nisarg Chokshi");

class QuoteList extends StatefulWidget {
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(line: "The Purpose of our lives is to be Happy !", author: "Dalai Lama"),
    Quote(line: "Be the Change that you wish to see in the World !", author: "Mahatma Gandhi"),
    Quote(line: "Intellectual Growth should commence at Birth and Ease only at Death !", author: "Albert Einstein"),
  ]; // Quotes

  Widget quoteTemplate(quote) {
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
                  color: Colors.green[900], fontSize: 18.0), //TextStyle
            ), // Text
            SizedBox(height: 6.0),
            Text(
              '- ' + quote.author,
              style: TextStyle(
                  color: Colors.green[800], fontSize: 14.0), //TextStyle
            ), // Text
          ], // Widget
        ), // Column
      ), // Padding
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ), // AppBar
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ), // Column
    ); // Scaffold
  }
}
