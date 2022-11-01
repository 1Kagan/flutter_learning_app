import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//Kağan Kılıç'ın ilk projesidir.
//başlangıç Tarihi:07.10.2022

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Öncelikle bir renk seçermisin ?',
      'answers': [
        {'text': 'Mavi', 'score': 4},
        {'text': 'Kırmızı', 'score': 5},
        {'text': 'Yeşil', 'score': 1},
        {'text': 'Sarı', 'score': 3},
        {'text': 'Gri', 'score': 1},
        {
          'text': 'Pembe',
          'score': 2,
        },
      ],
    },
    {
      'questionText': 'Sen aslında hangi yıllarda doğmalıydın?',
      'answers': [
        {'text': '50ler', 'score': 1},
        {'text': '60lar', 'score': 3},
        {'text': '70ler', 'score': 3},
        {'text': '80ler', 'score': 4},
        {'text': '90lar', 'score': 5},
        {'text': '2000ler', 'score': 1},
      ],
    },
    {
      'questionText': 'Hangi sosyal medya platformu çok gereksiz?',
      'answers': [
        {'text': 'Facebook', 'score': 3},
        {'text': 'Twitter', 'score': 2},
        {'text': 'İnstagram', 'score': 1},
        {'text': 'Snapchat', 'score': 2},
        {'text': 'Hiçbiri', 'score': 1},
        {'text': 'Hepsi', 'score': 4},
      ],
    },
    {
      'questionText': 'Verilen asal sayılardan birini seçermisin ?',
      'answers': [
        {'text': '7 Sayısı', 'score': 1},
        {'text': '13 Sayısı', 'score': 5},
        {'text': '17 Sayısı', 'score': 2},
        {'text': '23 Sayısı', 'score': 3},
        {'text': '62 Sayısı', 'score': 4},
        {'text': 'Ne sayısı Kardeşim', 'score': 6},
      ],
    },
    {
      'questionText': 'Hafta da kaç kez spora gidersin ?',
      'answers': [
        {'text': '1 kez giderim', 'score': 1},
        {'text': '2 kez giderim', 'score': 2},
        {'text': '3 kez giderim', 'score': 3},
        {'text': '4 kez giderim', 'score': 4},
        {'text': 'Her gün giderim', 'score': 5},
        {'text': 'Hiç gitmem', 'score': 0},
      ],
    },
    {
      'questionText':
          'Haftada kaç gün arkadaşlarınla kafede oturup sohbet edersin ?',
      'answers': [
        {'text': '1 kez kafeye gideriz ', 'score': 1},
        {'text': '2 kez kafeye gideriz', 'score': 2},
        {'text': '3 kez kafeye gideriz', 'score': 3},
        {'text': '4 kez kafeye gideriz', 'score': 4},
        {'text': 'Her gün gideriz', 'score': 5},
        {'text': 'Ne kafesi para mı var!', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Daha Fazla sorumuz var!');
    } else {
      print('Sorumuz kalmadı');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          shadowColor: Color.fromARGB(255, 73, 71, 71),
          leading: Icon(Icons.account_circle_rounded),
          title: Text(
            'Nasıl Birisin ?',
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
