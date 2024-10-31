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
  void logout() {
    ref.read(logoutUseCaseProvider);
    // 必要であれば、ここでログアウト後のリダイレクトなどの処理を行う
  }

  @override
  Widget build(BuildContext context) {
    // Boxの状態を監視
    final boxState = ref.watch(isLockUseCaseProvider);

    // Boxのデータを取得し、適切にUIに反映
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
      ),
      body: Center(
        child: SizedBox(
          width: 200, // FloatingActionButtonのデフォルトサイズの10倍
          height: 200, // FloatingActionButtonのデフォルトサイズの10倍
          child: FloatingActionButton(
            onPressed: () {
              boxState.when(
                data: (box) {
                  toggleLock(box); // Boxのロック状態を切り替える
                },
                loading: () {
                  // ロード中は何もしない
                },
                error: (error, stack) {
                  // エラーが発生した場合は何もしない
                },
              );
            },
            child: boxState.when(
              data: (box) => Column(
                mainAxisSize: MainAxisSize.min, // 子要素を中心に配置
                children: [
                  Text(
                    box.name, // Boxオブジェクトのname属性
                    style: const TextStyle(fontSize: 24), // テキストのサイズを調整
                  ),
                  Text(
                    box.isLock ? 'Locked' : 'locked', // isLock属性の表示
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white), // テキストのスタイル調整
                  ),
                ],
              ),
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text(
                'エラー: $error', // エラーメッセージを表示
                style: const TextStyle(fontSize: 16),
              ),
            ),
            backgroundColor: Colors.blue, // ボタンの背景色
            shape: const CircleBorder(),
          ),
        ),
      ),

    );
  }

  void toggleLock(Box box) {
    if (box.isLock) {
      // ボックスがロックされている場合、ロックを解除
      ref.read(unlockUseCaseProvider);
    } else {
      // ボックスがロックされていない場合、ロックを有効に
      ref.read(lockUseCaseProvider);
    }
  }
  
}
