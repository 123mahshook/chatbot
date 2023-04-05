import 'package:chatbot/routing/app_router.dart';
import 'package:chatbot/utils/app_colors.dart';
import 'package:chatbot/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double width = 0;
  @override
  void initState() {
    super.initState();
    navigateChat();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        color: AppColors.primaryColor,
        child: SafeArea(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 364,
                  width: width,
                  child: Stack(children: [
                    SizedBox(
                      height: 364,
                      width: width,
                      child: Image.asset(
                        Utils.getAssetJpg("img_splash"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 138,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              AppColors.primaryColor.withOpacity(0.1),
                              AppColors.primaryColor.withOpacity(0.3),
                              AppColors.primaryColor.withOpacity(0.5),
                              AppColors.primaryColor.withOpacity(0.8),
                              AppColors.primaryColor,
                            ])),
                      ),
                    )
                  ]),
                ),
                verticalSpace(50),
                Image.asset(
                  Utils.getAssetPng("logo"),
                  height: 140,
                ),
                const Spacer(),
                verticalSpace(34),
                Text(
                  "Not sure what to say?\nLet ChatGPT do the talking",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: AppColors.splashLightBlue,
                      fontWeight: FontWeight.w700),
                ),
                verticalSpace(35)
              ],
            ),
          ),
        ),
      ),
    );
  }

  navigateChat() async {
    await Future.delayed(const Duration(milliseconds: 400));
    context.pushReplacementNamed(AppRoute.home.name);
  }
}
