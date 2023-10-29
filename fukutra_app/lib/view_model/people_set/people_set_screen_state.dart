import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_set_screen_state.freezed.dart';

@freezed
class PeopleSetScreenState with _$PeopleSetScreenState {
  const factory PeopleSetScreenState({
    required String people,
    required String situation,
  }) = _PeopleSetScreenState;
}
