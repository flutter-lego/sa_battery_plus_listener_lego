import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

@ReadyForListener()
Future<void> batteryPlusListener(BuildContext context) async {
  var battery = Battery();

  // Be informed when the state (full, charging, discharging) changes
  battery.onBatteryStateChanged.listen((BatteryState state) {
    print("Battery state: $state");
  });
}