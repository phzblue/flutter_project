import 'package:auto_route/annotations.dart';
import 'package:project1/pages/login_p/login_p.dart';
import 'package:project1/pages/profile_p.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  MaterialRoute(page: LoginPage, initial: true),
  MaterialRoute(page: ProfilePage, path: '/profile')
])
class $AppRouter {}
