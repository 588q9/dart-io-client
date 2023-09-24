import 'package:ash_go/common/protocol/enums/packet_type.dart';
import 'package:ash_go/common/protocol/frame/server/push/push_server_frame.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common_push_server_frame.g.dart';

@JsonSerializable(explicitToJson: true)
class CommonPushServerFrame extends PushServerFrame {
  Map<String, dynamic>? data;
  int packType;

  CommonPushServerFrame(
      {required this.packType,
      required this.data,
      required super.pushSeriesId});

  @override
  PacketType getPacketType() {
    return PacketType.values[packType];
  }

  factory CommonPushServerFrame.fromJson(Map<String, dynamic> json) =>
      _$CommonPushServerFrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CommonPushServerFrameToJson(this);
}
