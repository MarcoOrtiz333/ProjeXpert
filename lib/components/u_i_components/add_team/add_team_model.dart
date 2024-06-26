import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_states/empty_members/empty_members_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AddTeamModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ActivityRecord? newActivity;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotesRecord? taskActivity;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
