import Cocoa
import FlutterMacOS

public class PackageInfoMacosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.flutter.io/package_info", binaryMessenger: registrar.messenger)
    let instance = PackageInfoMacosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let bundle = Bundle.main
    switch call.method {
    case "getAll":
      result([
        "appName": bundle.object(forInfoDictionaryKey: "CFBundleDisplayName"),
        "packageName": bundle.bundleIdentifier,
        "version": bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString"),
        "buildNumber": bundle.object(forInfoDictionaryKey: "CFBundleVersion"),
      ])
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
