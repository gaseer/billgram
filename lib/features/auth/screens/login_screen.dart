import 'package:billgram/core/theme/theme.dart';
import 'package:billgram/core/utilities/loader.dart';
import 'package:billgram/features/auth/controller/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final w = MediaQuery.of(context).size.width;
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(w * .05),
        child: isLoading
            ? const Loader()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      height: w * .35,
                      duration: const Duration(milliseconds: 2000),
                      curve: Curves.easeInOut,
                      child: AnimatedOpacity(
                        opacity: true ? 1 : 0,
                        duration: Duration(milliseconds: 2000),
                        child: SvgPicture.asset('assets/icons/logo.svg'),
                      ),
                    ),
                    SizedBox(height: w * .05),
                    const Text(
                      'GRAMBOO SALES ESTIMATION',
                      style: Palette.customTextStyle,
                    ),
                    SizedBox(height: w * .1),
                    const Text(
                      'USE LOCAL AUTHENTICATION ',
                      style: Palette.customTextStyle,
                    ),
                    SizedBox(height: w * .05),
                    GestureDetector(
                      onTap: () => ref
                          .read(authControllerProvider.notifier)
                          .authenticate(context: context),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: w * .04, horizontal: w * .06),
                        decoration: BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.login, color: Colors.white),
                            SizedBox(width: w * .025),
                            Text('Authenticate',
                                style: Palette.customTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
