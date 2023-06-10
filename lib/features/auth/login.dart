import 'package:ady_connect/shared/resources/app_colors.dart';
import 'package:ady_connect/shared/resources/app_strings.dart';
import 'package:ady_connect/shared/resources/app_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _selectedIndex = 0;
  final List<String> _loginTypes = [
    AppStrings.kPhoneNumber,
    AppStrings.kEmail,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(100.h),
            Text(
              AppStrings.kLogin,
              style: AppTheme.textTheme.headlineMedium,
            ),
            Gap(10.h),
            Text(
              AppStrings.kLoginDesc,
              style: AppTheme.textTheme.bodyMedium,
            ),
            Gap(70.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _loginTypes.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 172.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          _selectedIndex == index ? 15 : 0,
                        ),
                        boxShadow: _selectedIndex == index
                            ? [
                                BoxShadow(
                                  offset: const Offset(0, 1),
                                  blurRadius: 7,
                                  color: Colors.black.withOpacity(.25),
                                ),
                              ]
                            : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        _loginTypes[index],
                        style: AppTheme.textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(110.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              child: TextField(
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  prefixIcon: SizedBox(
                    // width: 60.w,
                    child: CountryCodePicker(
                      initialSelection: 'GH',
                      showCountryOnly: false,
                      showDropDownButton: false,
                      enabled: false,
                      showOnlyCountryWhenClosed: false,
                      showFlag: true,
                      hideMainText: true,
                      alignLeft: true,
                      padding: EdgeInsets.zero,
                      flagWidth: 40.w,
                      flagDecoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  hintText: AppStrings.kPhoneNumber,
                  hintStyle: AppTheme.textTheme.bodyMedium,
                  // contentPadding: EdgeInsets.all(20.w),
                ),
                style: AppTheme.textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                ),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
              ),
            ),
            Gap(60.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 57.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.kBlue.withOpacity(.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  AppStrings.kRequestOtp,
                  style: AppTheme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Gap(60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1.h,
                  width: 156.w,
                  color: AppColors.kLineGrey,
                ),
                Text(
                  AppStrings.kOR,
                  style: AppTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 1.h,
                  width: 156.w,
                  color: AppColors.kLineGrey,
                ),
              ],
            ),
            Gap(60.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 57.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(.16),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.kLoginWithGoogle,
                      style: AppTheme.textTheme.bodyMedium,
                    ),
                  ),
                  Positioned(
                    left: 36.w,
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/icons/google_icon.png',
                      width: 30.w,
                      height: 30.w,
                    ),
                  ),
                ],
              ),
            ),
            Gap(40.h),
            Row(
              children: [
                Text(
                  AppStrings.kNotRegistered,
                  style: AppTheme.textTheme.bodySmall,
                ),
                Gap(3.w),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppStrings.kNotRegistered,
                    style: AppTheme.textTheme.bodySmall?.copyWith(
                      color: AppColors.kBlue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
