import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_set_screen_state.freezed.dart';

@freezed
class MoveSetScreenState with _$MoveSetScreenState {
  const factory MoveSetScreenState({
    required String transport,
    required String budget,
  }) = _MoveSetScreenState;
}
