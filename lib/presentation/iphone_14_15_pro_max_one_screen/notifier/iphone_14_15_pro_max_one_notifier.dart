import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:deanna__den_s_application2/presentation/iphone_14_15_pro_max_one_screen/models/iphone_14_15_pro_max_one_model.dart';
part 'iphone_14_15_pro_max_one_state.dart';

final iphone1415ProMaxOneNotifier = StateNotifierProvider<
    Iphone1415ProMaxOneNotifier, Iphone1415ProMaxOneState>(
  (ref) => Iphone1415ProMaxOneNotifier(Iphone1415ProMaxOneState(
    iphone1415ProMaxOneModelObj: Iphone1415ProMaxOneModel(),
  )),
);

/// A notifier that manages the state of a Iphone1415ProMaxOne according to the event that is dispatched to it.
class Iphone1415ProMaxOneNotifier
    extends StateNotifier<Iphone1415ProMaxOneState> {
  Iphone1415ProMaxOneNotifier(Iphone1415ProMaxOneState state) : super(state);
}
