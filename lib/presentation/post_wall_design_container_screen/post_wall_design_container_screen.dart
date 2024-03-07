import 'package:safe_drive/presentation/post_wall_design_tab_container_page/post_wall_design_tab_container_page.dart';
import 'package:safe_drive/routes/app_routes.dart';
import 'package:safe_drive/view/profile_view.dart';
import 'package:safe_drive/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PostWallDesignContainerScreen extends StatelessWidget {
  PostWallDesignContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.postWallDesignTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: const Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Categories:
        return AppRoutes.postWallDesignTabContainerPage;
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Account:
        return AppRoutes.profileViewScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.postWallDesignTabContainerPage:
        return const PostWallDesignTabContainerPage();
      case AppRoutes.profileViewScreen:
        return const ProfileView();
      default:
        return const DefaultWidget();
    }
  }
}
