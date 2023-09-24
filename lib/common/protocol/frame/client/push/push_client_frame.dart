import 'package:ash_go/common/protocol/frame/client/client_frame.dart';

import '../../../../../client/isolate_client.dart';

abstract class PushClientFrame extends ClientFrame {
  int pushSeriesId = SeriesIdInteger.ALONE_PACKET_SERIES_ID;
}
