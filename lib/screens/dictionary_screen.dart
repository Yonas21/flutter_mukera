import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class DictionaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to Flutter'),
      ),
      body: Center(
        child: RandomeWords(),
      ),
    );
  }
}

class RandomeWords extends StatefulWidget {
  @override
  _RandomeWordsState createState() => _RandomeWordsState();
}

class _RandomeWordsState extends State<RandomeWords> {
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return Divider();
        }

        final _index = i ~/ 2;
        if (_index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[_index]);
      },
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final bool alreadySaved = _saved.contains(wordPair);
    return ListTile(
      title: Text(wordPair.asPascalCase, style: _biggerFont),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void> (
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            }
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Words'),
            ),
            body: ListView(
              children: divided
            ),
          );
        }
      )
    );
  }
}
