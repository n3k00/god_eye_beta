import 'package:flutter/material.dart';
import 'package:god_eye_beta/pages/result.dart';

class AnswersPage extends StatelessWidget {
  final int questionIndex;
  AnswersPage(this.questionIndex);

  void _showAnswer(BuildContext context, String signName) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) =>Result(signName, questionIndex)),
        (Route<dynamic> route)=> false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "မျက်လုံမှိတ်ပြီး သင့်ရဲ့ကံကြမ္မာ ကိုရွေးချယ်ပါ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 80),
                Row(
                  children: [
                    ChooseSign('jupiter', _showAnswer),
                    ChooseSign('saturn', _showAnswer),
                    ChooseSign('sun', _showAnswer),
                    ChooseSign('mercury', _showAnswer),
                  ],
                ),
                Row(
                  children: [
                    ChooseSign('venus', _showAnswer),
                    ChooseSign('moon', _showAnswer),
                    ChooseSign('cancer', _showAnswer),
                    ChooseSign('pisces', _showAnswer),
                  ],
                ),
                Row(
                  children: [
                    ChooseSign('aries', _showAnswer),
                    ChooseSign('capricorn', _showAnswer),
                    ChooseSign('taurus', _showAnswer),
                    ChooseSign('libra', _showAnswer),
                  ],
                ),
                Row(
                  children: [
                    ChooseSign('mars', _showAnswer),
                    ChooseSign('leo', _showAnswer),
                    ChooseSign('virgo', _showAnswer),
                    ChooseSign('sagittarius', _showAnswer),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChooseSign extends StatelessWidget {
  final String signName;
  final Function signHandler;

  ChooseSign(this.signName, this.signHandler);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => signHandler(context, signName),
        child: Image.asset(
          'assets/images/$signName.png',
        ),
      ),
    );
  }
}
