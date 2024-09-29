import 'package:flutter_template/domain/auth/auth.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/user/grpc_service/user_grpc_service_interface.dart';
import 'package:flutter_template/user_interface/common/constants/auth0.dart';
import 'package:flutter_template/user_interface/router/router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_usecase.g.dart';

@riverpod
Future<void> loginUseCase(LoginUseCaseRef ref) async {
  try {
    var credential =
        await auth0.webAuthentication().login(audience: 'software');
    // credentialをAuthに変換
    final auth = Auth.fromAuth0Credentials(credential);
    // shared_preferencesに保存
    await ref.read(authRepositoryProvider).registerAuth(auth);
    await ref.read(userGrpcServiceProvider).createUser();
    // ここのproviderのみrouterで定義
    ref.invalidate(checkLoggedInUseCaseProvider);
    ref.invalidate(checkNameInUseCaseProvider);
  } catch (e) {
    print("ここでエラーが出ている");
    print("Login Failed: $e");
    return; // エラーが発生したら早期リターン
  }
  ;
}

@riverpod
Future<void> logoutUseCase(LogoutUseCaseRef ref) async {
  // auth0のログアウト処理
  await auth0.webAuthentication().logout();
  // shared_preferencesのログアウト処理
  await ref.read(authRepositoryProvider).deleteAuth();
  ref.invalidate(checkLoggedInUseCaseProvider);
}
