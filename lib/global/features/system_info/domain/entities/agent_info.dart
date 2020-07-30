import 'package:fcclone/global/features/system_info/domain/entities/device.dart';

class AgentInfo {
  final String appName;
  final String version;
  final String buildNumber;
  final String sdkVersion;
  final Device device;

  AgentInfo({
    this.appName,
    this.version,
    this.buildNumber,
    this.sdkVersion,
    this.device,
  });
}
