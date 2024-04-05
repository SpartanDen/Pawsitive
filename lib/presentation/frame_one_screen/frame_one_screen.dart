import 'package:deanna__den_s_application2/widgets/custom_text_form_field.dart';
import 'package:deanna__den_s_application2/core/utils/validation_functions.dart';
import 'package:flutter/material.dart';
import 'package:deanna__den_s_application2/core/app_export.dart';
import 'notifier/frame_one_notifier.dart';

class FrameOneScreen extends ConsumerStatefulWidget {
  const FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameOneScreenState createState() => FrameOneScreenState();
}

// ignore_for_file: must_be_immutable
class FrameOneScreenState extends ConsumerState<FrameOneScreen> {
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
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 38.h,
                  vertical: 26.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 29.v),
                    Container(
                      height: 851.v,
                      width: 338.h,
                      decoration: AppDecoration.gradientGrayToGreen,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 27.h,
                                right: 30.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildUserName(context),
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
                                              style:
                                                  theme.textTheme.headlineLarge,
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
                                vertical: 79.v,
                              ),
                              decoration: AppDecoration.fillGray,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text(
                                        "lbl_sign_in".tr,
                                        style: theme.textTheme.displayLarge,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 36.v),
                                  _buildEmail(context),
                                  SizedBox(height: 47.v),
                                  _buildPassword(context),
                                  SizedBox(height: 35.v),
                                  _buildConfirmpassword(context),
                                  SizedBox(height: 8.v),
                                  SizedBox(
                                    height: 124.v,
                                    width: 229.h,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
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
                                                      "lbl_log_in2".tr,
                                                      style: theme.textTheme
                                                          .headlineLarge,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 147.h,
                                            margin: EdgeInsets.only(left: 18.h),
                                            child: Text(
                                              "msg_already_have_an".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8.v)
                                ],
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(frameOneNotifier).userNameController,
            hintText: "lbl_username_mail".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(frameOneNotifier).emailController,
          hintText: "lbl_email".tr,
          hintStyle: theme.textTheme.titleLarge!,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 25.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(frameOneNotifier).passwordController,
          hintText: "lbl_create_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(vertical: 30.v),
          borderDecoration: TextFormFieldStyleHelper.fillGreen1,
          fillColor: appTheme.green200,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(frameOneNotifier).confirmpasswordController,
          hintText: "msg_confirm_password".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.fillGreen1,
          fillColor: appTheme.green200,
        );
      },
    );
  }

  /// Navigates to the frameScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frameScreen,
    );
  }
}
