import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_text_feild.dart';
import 'package:adely_dispatcher/app/modules/allPackages/views/widgets/packagesRow.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/all_packages_controller.dart';

class AllPackagesView extends GetView<AllPackagesController> {
  const AllPackagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffolColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 130),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.asset(
              StaticAssets.appBarBg,
              width: double.infinity,
              height: 193,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.bottomNavigation);
                    },
                    child: SvgPicture.asset(
                      StaticAssets.elipse,
                      height: 20,
                    ),
                  ),
                  const Text(
                    'Adely',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: CustomTextField(
                  name: 'name',
                  hint: '   Search by Batch',
                  textInputType: TextInputType.name,
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  borderRadius: 8,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
            child: Text('All Packages', style: CustomTextStyle.font16RB),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return PackagesRow(
                      name: controller.packageList[index].title!,
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: controller.packageList.length),
            ),
          )
        ],
      ),
      // bottomNavigationBar: const BottomNavigationView(),
    );
  }
}
