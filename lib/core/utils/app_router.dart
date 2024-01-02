import 'package:atlia_art/core/utils/constants.dart';
import 'package:atlia_art/features/Auth/presentation/views/forget_password_view.dart';
import 'package:atlia_art/features/Auth/presentation/views/login_view.dart';
import 'package:atlia_art/features/Auth/presentation/views/register_view.dart';
import 'package:atlia_art/features/Auth/presentation/views/welcome_view.dart';
import 'package:atlia_art/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
