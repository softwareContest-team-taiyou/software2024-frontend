import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:flutter_template/usecase/boxkey/boxkey_usecase.dart';

class InitRegisterPage extends ConsumerWidget {
  const InitRegisterPage({super.key});

  void logout(WidgetRef ref, BuildContext context) {
    ref.read(logoutUseCaseProvider);
  }

  // ラベルのテキストスタイル用関数
  Widget buildLabelText(String text, {bool isBold = false, double font = 20}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: font,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: const Color(0xFF333333),
      ),
    );
  }

  // TextFieldウィジェットを生成する関数
  Widget buildTextField(TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
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
        title: const Text(
          'デバイス登録',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7F7F7),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              logout(ref, context);
            },
            child: const Text('ログアウト', style: TextStyle(color: Colors.black)),
          ),
        ],
        backgroundColor: const Color(0xFF38A5C6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Center(child:buildLabelText('ボックス情報', isBold: true,font: 24),),
            const SizedBox(height: 8),
            buildLabelText('Box ID'),
            buildLabelText('半角数字',font:12),
            buildTextField(boxIdController),
            const SizedBox(height: 10),
            buildLabelText('Box Name'),
            buildLabelText('表示名を入力してください　例:NISBox',font:12),
            buildTextField(boxNameController),
            const SizedBox(height: 24),
            Center(child:buildLabelText('キー情報', isBold: true,font:24),),
            const SizedBox(height: 8),
            buildLabelText('Key ID'),
            buildLabelText('半角数字',font:12),
            buildTextField(keyIdController),
            const SizedBox(height: 10),
            buildLabelText('Key Name'),
            buildLabelText('表示名を入力してください　例:NISKey',font:12),
            buildTextField(keyNameController),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF38A5C6),
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  await ref.read(InitCreateBoxKeyUseCaseProvider(
                    boxIdController.text,
                    boxNameController.text,
                    keyIdController.text,
                    keyNameController.text,
                  ));
                },
                child: const Text(
                  '登録する',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
