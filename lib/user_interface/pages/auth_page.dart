import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  void login(WidgetRef ref) {
    ref.read(loginUseCaseProvider);
  }

  void signIn(WidgetRef ref) {
    ref.read(singInUseCaseProvider);
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
            Positioned(
              bottom: 300, // 画面下から10ピクセルの位置
              child: Image.asset(
                'assets/images/login_icon.jpg', // アイコン画像
                width: 400, // アイコン画像の幅
                height: 400, // アイコン画像の高さ
              ),
            ),


            // ボタンを縦に並べるために Column を使用
            Positioned(
              bottom: 120,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      login(ref);
                    },
                    child: const Text(
                      'ログイン',
                      style: TextStyle(
                        fontSize: 24, // テキストのフォントサイズ
                        fontWeight: FontWeight.bold, // テキストを太字に
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF479955), // ボタンの背景色を変更
                      foregroundColor: Colors.white, // ボタンのテキスト色を変更
                      padding: EdgeInsets.symmetric(
                          horizontal: 128, vertical: 16), // ボタンのパディングを増やす
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(824), // ボタンの角を丸くする
                      ),
                    ),
                  ),

                  //はじめての方はこちら
                  const SizedBox(height: 32),
                  const Text(
                      'はじめての方はこちら',
                      style: TextStyle(
                        fontSize: 18, // テキストのフォントサイズ
                        fontWeight: FontWeight.bold, // テキストを太字に
                      ),
                    ),

                  const SizedBox(height: 8), // ボタン間のスペース
                  ElevatedButton(
                    onPressed: () async {
                      signIn(ref);
                    },
                    child: const Text(
                      '新規登録',
                      style: TextStyle(
                        fontSize: 24, // テキストのフォントサイズ
                        fontWeight: FontWeight.bold, // テキストを太字に
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x30479955), // ボタンの背景色を変更 // ボタンの背景色を変更
                      foregroundColor: Colors.black, // ボタンのテキスト色を変更
                      padding: EdgeInsets.symmetric(
                          horizontal: 128, vertical: 16), // ボタンのパディングを増やす
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24), // ボタンの角を丸くする
                      ),
                    ),
                  ),
                ],
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
