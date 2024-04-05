import 'package:flutter/material.dart';
import 'package:deanna__den_s_application2/core/app_export.dart';
import 'notifier/iphone_14_15_pro_max_one_notifier.dart';

class Iphone1415ProMaxOneScreen extends ConsumerStatefulWidget {
  const Iphone1415ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxOneScreenState createState() =>
      Iphone1415ProMaxOneScreenState();
}

class Iphone1415ProMaxOneScreenState
    extends ConsumerState<Iphone1415ProMaxOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFifteen(context),
              _buildOne(context),
              SizedBox(height: 4.v),
              Container(
                height: 9.v,
                width: 4.h,
                margin: EdgeInsets.only(left: 76.h),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 53.v),
              _buildSixteen(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return SizedBox(
      height: 267.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 167.v,
            width: 430.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 174.v,
            width: 430.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 24.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: 111.v,
            width: 430.h,
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 41.v),
      decoration: AppDecoration.fillGreen,
      child: Column(
        children: [
          SizedBox(height: 17.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 234.v,
            width: 424.h,
            onTap: () {
              onTapImgImageOne(context);
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: 167.v,
            width: 430.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6,
            height: 167.v,
            width: 430.h,
            alignment: Alignment.topCenter,
          )
        ],
      ),
    );
  }

  /// Navigates to the frameScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frameScreen,
    );
  }
}
