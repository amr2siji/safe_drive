import 'package:flutter/material.dart';
import 'package:safe_drive/view/profile_view.dart';
import '../presentation/post_wall_design_container_screen/post_wall_design_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String postWallDesignPage = '/post_wall_design_page';

  static const String postWallDesignTabContainerPage =
      '/post_wall_design_tab_container_page';

  static const String postWallDesignContainerScreen =
      '/post_wall_design_container_screen';
  static const String profileViewScreen =
      '/profile_view_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    postWallDesignContainerScreen: (context) => PostWallDesignContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    profileViewScreen: (context) => const ProfileView()
  };
}
