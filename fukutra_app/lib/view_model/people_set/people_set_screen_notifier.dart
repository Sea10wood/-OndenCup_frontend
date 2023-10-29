import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/people_set/people_set_screen_state.dart';

final peopleSetScreenProvider =
    StateNotifierProvider<PeopleSetScreenNotifier, PeopleSetScreenState>(
  (ref) => PeopleSetScreenNotifier(ref)..initState(),
);

class PeopleSetScreenNotifier extends StateNotifier<PeopleSetScreenState> {
  final Ref ref;
  PeopleSetScreenNotifier(this.ref)
      : super(const PeopleSetScreenState(people: "", situation: "")) {
    initState();
  }

  Future<void> initState() async {}
}
