import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/modal_user_profile/modal_user_profile_widget.dart';
import '/components/u_i_components/drawer_nav/drawer_nav_widget.dart';
import '/components/u_i_components/notification_trigger/notification_trigger_widget.dart';
import '/components/u_i_components/user_card/user_card_widget.dart';
import '/components/u_i_components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class MainTeamPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? searchActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerNav component.
  late DrawerNavModel drawerNavModel;
  // Model for WebNav component.
  late WebNavModel webNavModel;
  // Model for notification_Trigger component.
  late NotificationTriggerModel notificationTriggerModel;
  // Model for userCard component.
  late UserCardModel userCardModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerNavModel = createModel(context, () => DrawerNavModel());
    webNavModel = createModel(context, () => WebNavModel());
    notificationTriggerModel =
        createModel(context, () => NotificationTriggerModel());
    userCardModel = createModel(context, () => UserCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerNavModel.dispose();
    webNavModel.dispose();
    notificationTriggerModel.dispose();
    userCardModel.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
