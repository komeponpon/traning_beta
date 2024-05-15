import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // intlパッケージをインポート

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 現在の日付を取得
    DateTime now = DateTime.now();
    // DateFormatでフォーマット
    String formattedDate = DateFormat('M月 d日 EEEE', 'ja').format(now);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'トレーニングログ',
          style: TextStyle(color: Color(0xFFF137F1)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                formattedDate, // フォーマットした日付を表示
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF137F1), // カラーコードを変更
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  '今日のトレーニングプランを立てる',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text('トレーニング目標', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 16.0),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(height: 16.0),
                    Text('目標達成率', style: TextStyle(fontSize: 16)),
                    Text(
                      '-%',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text('ボディデータ', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('-kg',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('体重', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('-kg',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('筋肉量', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('-%',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            Text('体脂肪率', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color(0xFFF137F1), // カラーコードを変更
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'トレーニング',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'カレンダー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
    );
  }
}
