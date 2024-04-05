// ignore_for_file: must_be_immutable

part of 'frame_one_notifier.dart';

/// Represents the state of FrameOne in the application.
class FrameOneState extends Equatable {
  FrameOneState({
    this.userNameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.frameOneModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  FrameOneModel? frameOneModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        emailController,
        passwordController,
        confirmpasswordController,
        frameOneModelObj,
      ];

  FrameOneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    FrameOneModel? frameOneModelObj,
  }) {
    return FrameOneState(
      userNameController: userNameController ?? this.userNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      frameOneModelObj: frameOneModelObj ?? this.frameOneModelObj,
    );
  }
}
