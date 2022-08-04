import 'package:flutter/material.dart';
import 'package:god_eye_beta/pages/ansewers_page.dart';


class HomePage extends StatelessWidget {
  final _question = const [
    {
      'questionText':
      "ချစ်သူနဲ့..စိတ်သဘောထားမတိုက်ဆိုင်ဖြစ်နေတယ်ပြန်အဆင်ပြေနိုင်ပါ့မလား။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      " အချစ်ရေးမှာ...ပြိုင်ဘက်တစ်ယောက်ရှိနေတယ်ဘာတွေဆက်ဖြစ်လာမလဲ။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "အခုတွဲနေတဲ့ချစ်သူဟာ...ဘဝအတွက်လက်တွဲဖော်အစစ်ဖြစ်လာနိုင်မလား။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "လိုချင်တာတွေမရလို့..သူ့ကိုစိတ်ကောက်ပြနေတာဖြစ်ပြီးအလျော့ပေးလိုက်ရတော့မလား။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "သူကစေ့စပ်ထားချင်တယ်တဲ့ လက်ခံလိုက်ရင်ကောင်းမလား။ဘာဆက်လုပ်မလဲ။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "ကိုယ့်ဘက်ကသိပ်ချစ်မြတ်နိုးရသူတစ်ယောက်နဲ့ တွေ့ခွင့်၊ဆုံခွင့်ကြုံနိုင်ပါ့မလား။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "ချစ်သူနဲ့ကွဲကွာနေတာပြန်ဆုံခွင့်ရပါ့မလား။ဘယ်အချိန်မှာပြန်ဆုံခွင့်ရမလဲ။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "ချစ်သူပြောတဲ့စကားတွေဟာရင်တွင်းဖြစ်အစစ်အမှန်တွေလား ယုံကြည်လိုက်ရမလား။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "သံယောဇဉ်ဖြစ်နေမိတဲ့နှစ်ယောက်မှာဘယ်သူကကိုယ့်ကိုပိုပီးချစ်မြတ်နိုးမှာလဲ။",
      'answer': [
        {},
      ]
    },
    {
      'questionText':
      "သူ့ဘက်ကအမှားတွေလုပ်နေပီးဆက်ပြီးလက်တွဲနေဖို့ဖြစ်နိုင်ပါ့မလား။",
      'answer': [
        {},
      ]
    },
  ];

  String _eng2mmNumber(int number){
    var nums = { '0': '၀', '1': '၁', '2': '၂', '3': '၃', '4': '၄' , '5': '၅', '6': '၆', '7':'၇', '8':'၈', '9':'၉' };
    var test = number.toString().split('');
    var returnStr = '';
    for (var age in test) {
      returnStr += nums[age].toString();
    }
    return returnStr;
  }

  void onTapAnswer(BuildContext context,int index){
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return AnswersPage(index);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("နတ်မျက်စိလက်ထောက်ဗေဒင် "),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _question.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext content, int index) {
                  return Card(
                    child: ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${_eng2mmNumber(index+1)} ။"),
                          SizedBox(width: 10),
                          Expanded(
                              child: Text(
                                  _question[index]['questionText'].toString()))
                        ],
                      ),
                      onTap: (){
                        onTapAnswer(context,index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
  }
}