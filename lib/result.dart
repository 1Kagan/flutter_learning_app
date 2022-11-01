import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'Gerçekten Aşırı Hayatsızsın, Dostum biraz dışarı çık !';
    } else if (resultScore <= 20) {
      resultText = 'Gerçekten Sıkıcısın Hayatına Çeki Düzen Ver !';
    } else if (resultScore <= 25) {
      resultText = 'Yani Hayatın Güzel Ama daha fazlası var !';
    } else {
      resultText = 'Kanka Sen Gerçekten Yaşamayı Biliyorsun Bi Ara Takılalım !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Testi Tekrarla!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
