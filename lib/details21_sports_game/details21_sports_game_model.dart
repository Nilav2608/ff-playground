import '/flutter_flow/flutter_flow_util.dart';
import 'details21_sports_game_widget.dart' show Details21SportsGameWidget;
import 'package:flutter/material.dart';

class Details21SportsGameModel
    extends FlutterFlowModel<Details21SportsGameWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
