import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/user/user_usecase.dart';

class RegisterPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            ElevatedButton(
              onPressed: () async {
                // 名前を更新するユースケースを呼び出す
                await ref.read(UpdateUserUseCaseProvider(nameController.text));
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
