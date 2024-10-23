import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  void login(WidgetRef ref) {
    ref.read(loginUseCaseProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BoxKeyPer',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7F7F7),
          ),
        ),
        backgroundColor: const Color(0xFF38A5C6), // AppBarの背景色
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            //ログインアイコン
            Image.asset('assets/images/login_icon.jpg', // ローカルの画像
              width:450,
              height:450
            ),

            //ログインボタン
            Positioned(
              bottom: 100, 
              child: ElevatedButton(
                onPressed: () async {
                  login(ref);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24, // テキストのフォントサイズ
                    fontWeight: FontWeight.bold, // テキストを太字に
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF479955), // ボタンの背景色を変更
                  foregroundColor: Colors.white, // ボタンのテキスト色を変更
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), // ボタンのパディングを増やす
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // ボタンの角を丸くする
                  ),
                ),
              ),
            ),
            //カエルキャラクター
            Positioned(
              right: 10, // 画面右から10ピクセルの位置
              bottom: 10, // 画面下から10ピクセルの位置
              child: Image.asset(
                'assets/images/software_character.jpg', // キャラクター画像
                width: 100, // キャラクター画像の幅
                height: 100, // キャラクター画像の高さ
              ),
            ),
          ],
        ),
      ),
    );
  }
}
