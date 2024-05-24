import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:traning_beta/components/traning_plan_button.dart';
import 'package:traning_beta/components/display_goal.dart';
import 'package:traning_beta/components/body_data_card.dart';
import 'package:traning_beta/components/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('M月 d日 EEEE', 'ja').format(now);

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'トレーニングログ',
          style: TextStyle(
              color: Color(0xFFF137F1),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              TrainingPlanButton(formattedDate: formattedDate),
              SizedBox(height: 32.0),
              DisplayGoal(),
              SizedBox(height: 32.0),
              BodyDataCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // ボトムナビゲーションのインデックスに基づいて処理を行う
        },
      ),
    );
  }
}
