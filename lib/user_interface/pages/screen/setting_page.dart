import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/box/box.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:flutter_template/usecase/box/box_usecase.dart';
import 'package:go_router/go_router.dart';
//「routed」はプロジェクト名です。

class SettingPage extends ConsumerStatefulWidget {
  const SettingPage({super.key});

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends ConsumerState<SettingPage> {
  void logout(WidgetRef ref, BuildContext context) {
    ref.read(logoutUseCaseProvider);
  }

    Widget buildLabelText(String text, {bool isBold = true, double font = 20, int colors = 0xFF333333}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: font,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: Color(colors),
      ),
    );
  }

    Widget _buildSettingItem(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54), // アイコン
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, color: Colors.black87),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.black54), // 矢印
      onTap: onTap, // 項目がタップされたときの動作
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '設定画面',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7F7F7),
          ),
        ),
        backgroundColor: const Color(0xFF38A5C6), // AppBarの背景色
                actions: [
          TextButton(
              onPressed: () async {
                logout(ref, context);
              },
              child: const Icon(Icons.logout,color:Colors.black,size:32)
              )
        ],
      ),
            body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [          
            buildLabelText('ユーザ情報'),
            _buildSettingItem(context, Icons.person, 'メールアドレス', () {
              // ナビゲーション先を指定
            }),
            _buildSettingItem(context, Icons.key, 'Key ID', () {
              // ナビゲーション先を指定
            }),
            _buildSettingItem(context, Icons.token, 'Box ID', () {
              // ナビゲーション先を指定
            }),
            buildLabelText('アプリ情報'),
            _buildSettingItem(context, Icons.check_circle, 'バージョン', () {
              // ナビゲーション先を指定
            }),
            _buildSettingItem(context, Icons.book, '利用規約', () {
              // ナビゲーション先を指定
            }),
            _buildSettingItem(context, Icons.book, 'プライバシーポリシー', () {
              // ナビゲーション先を指定
            }),
            _buildSettingItem(context, Icons.book, 'ライセンス情報', () {
              // ナビゲーション先を指定
            }),
            const SizedBox(height: 32),
            _buildSettingItem(context, Icons.backspace, 'アカウントの削除', () {
              // ナビゲーション先を指定
            }),
          ],
        ),
      ),
    );
  }
}