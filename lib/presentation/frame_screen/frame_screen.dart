import 'package:deanna__den_s_application2/widgets/custom_text_form_field.dart';
import 'package:deanna__den_s_application2/core/utils/validation_functions.dart';
import 'package:flutter/material.dart';
import 'package:deanna__den_s_application2/core/app_export.dart';
import 'notifier/frame_notifier.dart';

class FrameScreen extends ConsumerStatefulWidget {
  const FrameScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameScreenState createState() => FrameScreenState();
}

// ignore_for_file: must_be_immutable
class FrameScreenState extends ConsumerState<FrameScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrame,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 851.v,
                        width: 338.h,
                        margin: EdgeInsets.only(left: 38.h),
                        decoration: AppDecoration.gradientGrayToGreen,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 27.h,
                                  top: 98.v,
                                  right: 30.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 205.h,
                                        margin: EdgeInsets.only(left: 31.h),
                                        child: Text(
                                          "lbl_log_in".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallLightgreenA700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 41.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Consumer(
                                        builder: (context, ref, _) {
                                          return CustomTextFormField(
                                            controller: ref
                                                .watch(frameNotifier)
                                                .userNameController,
                                            hintText: "lbl_username_mail".tr,
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 38.v),
                                    Container(
                                      width: 278.h,
                                      margin: EdgeInsets.only(right: 3.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 3.h,
                                        vertical: 9.v,
                                      ),
                                      decoration: AppDecoration.fillGreen200,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 41.v),
                                          Text(
                                            "lbl_password".tr,
                                            style: theme.textTheme.bodySmall,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 104.v),
                                    SizedBox(
                                      width: 135.h,
                                      child: Text(
                                        "msg_don_t_have_an_account_sign".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                      height: 98.v,
                                      width: 229.h,
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                              onTap: () {
                                                onTapView(context);
                                              },
                                              child: Container(
                                                height: 98.v,
                                                width: 229.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.green900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    114.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 49.h,
                                                top: 27.v,
                                              ),
                                              child: Text(
                                                "lbl_sign_in".tr,
                                                style: theme
                                                    .textTheme.headlineLarge,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 86.v,
                                ),
                                decoration: AppDecoration.fillGray,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 205.h,
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: Text(
                                          "lbl_log_in".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallLightgreenA700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 53.v),
                                    Consumer(
                                      builder: (context, ref, _) {
                                        return CustomTextFormField(
                                          controller: ref
                                              .watch(frameNotifier)
                                              .userName1Controller,
                                          hintText: "lbl_username_mail".tr,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "err_msg_please_enter_valid_text"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                        );
                                      },
                                    ),
                                    SizedBox(height: 47.v),
                                    Consumer(
                                      builder: (context, ref, _) {
                                        return CustomTextFormField(
                                          controller: ref
                                              .watch(frameNotifier)
                                              .passwordController,
                                          hintText: "lbl_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 30.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .fillGreen1,
                                          fillColor: appTheme.green200,
                                        );
                                      },
                                    ),
                                    SizedBox(height: 95.v),
                                    SizedBox(
                                      width: 135.h,
                                      child: Text(
                                        "msg_don_t_have_an_account_sign".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                      height: 98.v,
                                      width: 229.h,
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 98.v,
                                              width: 229.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.green900,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  114.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 49.h,
                                                top: 27.v,
                                              ),
                                              child: Text(
                                                "lbl_sign_in".tr,
                                                style: theme
                                                    .textTheme.headlineLarge,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 17.v)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse3,
                      height: 274.v,
                      width: 353.h,
                      alignment: Alignment.topLeft,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the frameOneScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frameOneScreen,
    );
  }
}
