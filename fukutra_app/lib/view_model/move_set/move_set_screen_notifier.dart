import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/move_set/move_set_screen_state.dart';

final moveSetScreenProvider =
    StateNotifierProvider<MoveSetScreenNotifier, MoveSetScreenState>(
  (ref) => MoveSetScreenNotifier(ref)..initState(),
);

class MoveSetScreenNotifier extends StateNotifier<MoveSetScreenState> {
  final Ref ref;
  MoveSetScreenNotifier(this.ref)
      : super(const MoveSetScreenState(transport: "", budget: "")) {
    initState();
  }

  Future<void> initState() async {}
}
