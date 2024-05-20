import 'package:flutter/material.dart';

class BodyDataCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Text('ボディデータ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('-kg',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('体重', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  Text('-kg',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('筋肉量', style: TextStyle(fontSize: 14)),
                ],
              ),
              Column(
                children: [
                  Text('-%',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('体脂肪率', style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
