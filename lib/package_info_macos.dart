import 'dart:async';

import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class PackageInfoMacos {
  static Future<PackageInfo> fromPlatform() => PackageInfo.fromPlatform();
}
