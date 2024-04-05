import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:deanna__den_s_application2/presentation/frame_screen/models/frame_model.dart';
part 'frame_state.dart';

final frameNotifier = StateNotifierProvider<FrameNotifier, FrameState>(
  (ref) => FrameNotifier(FrameState(
    userNameController: TextEditingController(),
    userName1Controller: TextEditingController(),
    passwordController: TextEditingController(),
    frameModelObj: FrameModel(),
  )),
);

/// A notifier that manages the state of a Frame according to the event that is dispatched to it.
class FrameNotifier extends StateNotifier<FrameState> {
  FrameNotifier(FrameState state) : super(state);
}
