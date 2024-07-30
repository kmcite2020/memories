// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:memories/main.dart';

class SelectNavigationIndexAct {
  final int index;
  const SelectNavigationIndexAct(this.index);
}

final Reducer<int> navigationIndexRM = (state, action) {
  if (action is SelectNavigationIndexAct) {
    return action.index;
  }
  return state;
};
