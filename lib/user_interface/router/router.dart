import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/user/grpc_service/user_grpc_service_interface.dart';
import 'package:flutter_template/domain/user/repository/user_repository.dart';
import 'package:flutter_template/user_interface/pages/auth_page.dart';
import 'package:flutter_template/user_interface/pages/init_register_page.dart';
import 'package:go_router/go_router.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/detail_page.dart';
import '../pages/splash_page.dart';

final checkLoggedInUseCaseProvider = FutureProvider<bool>((ref) async {
  return ref.read(authRepositoryProvider).checkAuth();
});
final checkNameInUseCaseProvider = FutureProvider<User>((ref) async {
  return ref.read(userGrpcServiceProvider).getUser();
});

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login/redirection',
        name: 'login-redirection',
        redirect: (context, state) {
          // Corrected to include both parameterså
          // localリポジトリーで判断している
          final isLoggedIn = ref.watch(checkLoggedInUseCaseProvider);
          // grpcで判断している
          final user = ref.watch(checkNameInUseCaseProvider);
          print(user);
          print("リロードされているか確認");
          return isLoggedIn.when(
            data: (isLoggedIn) {
              // Further checks if the user is logged in
              if (isLoggedIn) {
                // Check if the user's name is not empty
                return user.when(
                  data: (user) => user.isInit ? '/home' : '/init_register',
                  loading: () => '/splash',
                  error: (_, __) => '/error',
                );
              } else {
                // Not logged in
                return '/login';
              }
            },
            loading: () => '/splash',
            error: (_, __) => '/error',
          );
        },
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: HomePage(),
        ),
      ),
      GoRoute(
        path: '/detail/:id',
        name: 'detail',
        builder: (context, state) =>
            DetailPage(id: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: const MainView(),
        ),
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/init_register',
        name: 'init_register',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: InitRegisterPage(),
        ),
        // builder: (context, state) => RegisterPage(),
      ),
    ],
  );
});
