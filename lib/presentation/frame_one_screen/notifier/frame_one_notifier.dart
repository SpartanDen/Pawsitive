import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:deanna__den_s_application2/presentation/frame_one_screen/models/frame_one_model.dart';
part 'frame_one_state.dart';

final frameOneNotifier = StateNotifierProvider<FrameOneNotifier, FrameOneState>(
  (ref) => FrameOneNotifier(FrameOneState(
    userNameController: TextEditingController(),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    confirmpasswordController: TextEditingController(),
    frameOneModelObj: FrameOneModel(),
  )),
);

/// A notifier that manages the state of a FrameOne according to the event that is dispatched to it.
class FrameOneNotifier extends StateNotifier<FrameOneState> {
  FrameOneNotifier(FrameOneState state) : super(state);
}
