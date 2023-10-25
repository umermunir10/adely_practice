import 'package:adely_dispatcher/app/data/configs/app_theme.dart';
import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_text_feild.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 500),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                StaticAssets.appBarBg,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    const SizedBox(
                      width: 85,
                    ),
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    SvgPicture.asset(StaticAssets.stock)
                  ],
                ),
              ),
              Positioned(
                  bottom: -90,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: AppColor.primaryBackgroundColor,
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: AssetImage(StaticAssets.personFilled),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  )),
              Positioned(
                bottom: -110,
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              )
            ],
          )),
      body: Stack(children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Name',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 13, bottom: 20, left: 25, right: 25),
                child: CustomTextField(
                  name: '',
                  hint: 'Enter your name',
                  textInputType: TextInputType.name,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'ID',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 20, left: 25, right: 25),
                child: CustomTextField(
                    name: '',
                    hint: 'Enter your email',
                    textInputType: TextInputType.name,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        StaticAssets.mail,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Telephone',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 20, left: 25, right: 25),
                child: CustomTextField(
                    name: '',
                    hint: 'Enter your number',
                    textInputType: TextInputType.name,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        StaticAssets.phone,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Password',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 20, left: 25, right: 25),
                child: CustomTextField(
                    name: '',
                    hint: 'Enter password',
                    textInputType: TextInputType.name,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        StaticAssets.lock,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Company Name',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 13, bottom: 20, left: 25, right: 25),
                child: CustomTextField(
                    name: '',
                    hint: 'Enter your company name',
                    textInputType: TextInputType.name,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        StaticAssets.site,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Address',
                  style:
                      CustomTextStyle.font16RM.copyWith(color: AppColor.grey),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 13, bottom: 20, left: 25, right: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.veryLightGrey,
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      maxLines: 5,
                      decoration: InputDecoration(
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                          hintText: 'Enter your address',
                          hintStyle: CustomTextStyle.font16R.copyWith(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                              color: AppColor.hintTextColor),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0)
                                .copyWith(bottom: 100),
                            child: SvgPicture.asset(StaticAssets.location),
                          )),
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  child: CustomButton(
                    onPressed: () {
                      Get.toNamed(Routes.bottomNavigation);
                    },
                    buttonName: 'Save',
                    type: ButtonVariant.filled,
                    height: 55,
                    isbold: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: Get.height * 0.20,
              color: AppColor.scaffolColor,
              child: Image.asset(
                StaticAssets.editProfilebg,
              ),
            ),
            Container(
              height: Get.height * 0.02,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    AppColor.scaffolColor,
                    AppColor.scaffolColor.withOpacity(0.1)
                  ])),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ]),
    );
  }
}
