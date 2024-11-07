import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:flutter_template/usecase/boxkey/boxkey_usecase.dart';
import 'package:flutter_template/usecase/user/user_usecase.dart';

class InitRegisterPage extends ConsumerWidget {
  void logout(WidgetRef ref, BuildContext context) {
    ref.read(logoutUseCaseProvider);
  }

    Widget buildLabelText(String text, {bool isBold = false, double font = 20, int colors = 0xFF333333}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: font,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: Color(colors),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController boxIdController = TextEditingController();
    final TextEditingController keyIdController = TextEditingController();
    final TextEditingController boxNameController = TextEditingController();
    final TextEditingController keyNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        actions: [
          TextButton(
              onPressed: () async {
                logout(ref, context);
              },
              child: const Text('ログアウト'))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: boxIdController,
              decoration: InputDecoration(labelText: 'boxId'),
            ),
            TextField(
              controller: boxNameController,
              decoration: InputDecoration(labelText: 'boxName'),
            ),
            TextField(
              controller: keyIdController,
              decoration: InputDecoration(labelText: 'keyId'),
            ),
            TextField(
              controller: keyNameController,
              decoration: InputDecoration(labelText: 'keyName'),
            ),
            ElevatedButton(
              onPressed: () async {
                // 名前を更新するユースケースを呼び出す
                await ref.read(InitCreateBoxKeyUseCaseProvider(
                    boxIdController.text,
                    boxNameController.text,
                    keyIdController.text,
                    keyNameController.text));
                // 成功した場合の処理、例えば画面遷移など
              },
              child: Text('Update Name'),
            ),
          ],
        ),
      ),
    );
  }
}
