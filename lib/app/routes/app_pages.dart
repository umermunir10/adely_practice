import 'package:get/get.dart';

import '../modules/allPackages/bindings/all_packages_binding.dart';
import '../modules/allPackages/views/all_packages_view.dart';
import '../modules/bottomNavigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottomNavigation/views/bottom_navigation_view.dart';
import '../modules/createBatch/bindings/create_batch_binding.dart';
import '../modules/createBatch/views/create_batch_view.dart';
import '../modules/createBatch2/bindings/create_batch2_binding.dart';
import '../modules/createBatch2/views/create_batch2_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/packageDetail3/bindings/package_detail3_binding.dart';
import '../modules/packageDetail3/views/package_detail3_view.dart';
import '../modules/packageDetail_1/bindings/package_detail_1_binding.dart';
import '../modules/packageDetail_1/views/package_detail_1_view.dart';
import '../modules/package_detail_2/bindings/package_detail_2_binding.dart';
import '../modules/package_detail_2/views/package_detail_2_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tracking/bindings/tracking_binding.dart';
import '../modules/tracking/views/tracking_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.bottomNavigation,
      page: () => const BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.tracking,
      page: () => const TrackingView(),
      binding: TrackingBinding(),
    ),
    GetPage(
      name: _Paths.allpackages,
      page: () => const AllPackagesView(),
      binding: AllPackagesBinding(),
    ),
    GetPage(
      name: _Paths.packageDetail1,
      page: () => const PackageDetail1View(),
      binding: PackageDetail1Binding(),
    ),
    GetPage(
      name: _Paths.packageDetail2,
      page: () => const PackageDetail2View(),
      binding: PackageDetail2Binding(),
    ),
    GetPage(
      name: _Paths.packageDetail3,
      page: () => const PackageDetail3View(),
      binding: PackageDetail3Binding(),
    ),
    GetPage(
      name: _Paths.createBatch,
      page: () => const CreateBatchView(),
      binding: CreateBatchBinding(),
    ),
    GetPage(
      name: _Paths.createBatch2,
      page: () => const CreateBatch2View(),
      binding: CreateBatch2Binding(),
    ),
  ];
}
