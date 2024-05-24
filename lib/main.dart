import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:traning_beta/screens/login_screen.dart';
import 'package:intl/date_symbol_data_local.dart'; // 追加
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // ロケールデータの初期化
  await initializeDateFormatting('ja');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'トレーニング記録ベータ版',
      home: LoginScreen(), // ログインページを最初に表示する
      // 他のルーティングの設定を行う
    );
  }
}
