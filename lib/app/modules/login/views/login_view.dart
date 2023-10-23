import 'package:adely_dispatcher/app/data/utils/static_assets.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_buttons.dart';
import 'package:adely_dispatcher/app/data/widgets/custom_text_feild.dart';
import 'package:adely_dispatcher/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  final bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/adeleyImage.png'),
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/adelyText.png'),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const SizedBox(
          width: 250,
          child: Text(
            'Welcome to Adely Dispatcher App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Login to your Account',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(
          height: 61,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: CustomTextField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                StaticAssets.mail,
              ),
            ),
            name: '',
            hint: 'Enter your email',
            textInputType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: CustomTextField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(StaticAssets.lock),
              ),
              name: '',
              hint: 'Your Password',
              textInputType: TextInputType.visiblePassword),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (_) {},
                    activeColor: Colors.grey,
                    checkColor: Colors.grey,
                  ),
                  const Text('Remember me'),
                ],
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 67,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                height: 56,
                width: double.infinity,
                child: CustomButton(
                  buttonName: 'Login',
                  type: ButtonVariant.filled,
                  onPressed: () => Get.offNamed(Routes.bottomNavigation),
                ))),
        const SizedBox(
          height: 63,
        ),
        Image.asset(
          StaticAssets.bottomSplash,
          width: 390,
          fit: BoxFit.fitWidth,
        )
      ],
    ));
  }
}
