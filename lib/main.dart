import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/auth/repository/auth_sharepreference.dart';
import 'package:flutter_template/domain/todo/grpc_service/todo_grpc_service.dart';
import 'package:flutter_template/domain/todo/grpc_service/todo_grpc_service_interface.dart';
import 'package:flutter_template/domain/todo/repository/todo_repository.dart';
import 'package:flutter_template/domain/todo/repository/todo_sharepreference.dart';
import 'package:flutter_template/domain/user/grpc_service/user_grpc_service.dart';
import 'package:flutter_template/domain/user/grpc_service/user_grpc_service_interface.dart';
import 'package:flutter_template/domain/user/repository/user_repository.dart';
import 'package:flutter_template/domain/user/repository/user_sharepreference.dart';
import 'package:flutter_template/user_interface/router/router.dart';

void main() {
  runApp(
    ProviderScope(
      // 依存性の注入
      overrides: [
        todosRepositoryProvider
            .overrideWithValue(SharedPreferencesTodosRepository()),
        authRepositoryProvider
            .overrideWithValue(SharedPreferencesAuthRepository()),
        userRepositoryProvider
            .overrideWithValue(SharedPreferencesUserRepository()),
        todoGrpcServiceProvider.overrideWithProvider(
          Provider((ref) => TodoGrpcService(ref)),
        ),
        userGrpcServiceProvider.overrideWithProvider(
          Provider((ref) => UserGrpcService(ref)),
        )

        // todosRepositoryProvider.overrideWithValue(MockTodosRepository()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // MaterialAppにrouterを追加。
      routerConfig: router, //goRouterを基盤に設定する。
      title: 'template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
