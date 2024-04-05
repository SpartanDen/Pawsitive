// ignore_for_file: must_be_immutable

part of 'frame_notifier.dart';

/// Represents the state of Frame in the application.
class FrameState extends Equatable {
  FrameState({
    this.userNameController,
    this.userName1Controller,
    this.passwordController,
    this.frameModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? userName1Controller;

  TextEditingController? passwordController;

  FrameModel? frameModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        userName1Controller,
        passwordController,
        frameModelObj,
      ];

  FrameState copyWith({
    TextEditingController? userNameController,
    TextEditingController? userName1Controller,
    TextEditingController? passwordController,
    FrameModel? frameModelObj,
  }) {
    return FrameState(
      userNameController: userNameController ?? this.userNameController,
      userName1Controller: userName1Controller ?? this.userName1Controller,
      passwordController: passwordController ?? this.passwordController,
      frameModelObj: frameModelObj ?? this.frameModelObj,
    );
  }
}
