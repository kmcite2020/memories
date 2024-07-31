import '../../source_of_truth.dart';

final userBloc = UserBloc();

class UserBloc {
  String name([String? value]) {
    if (value != null) {
      sourceOfTruthBloc.user(sourceOfTruthBloc.user().copyWith(name: value));
    }
    return sourceOfTruthBloc.user().name;
  }

  String email([String? value]) {
    if (value != null) {
      sourceOfTruthBloc.user(sourceOfTruthBloc.user().copyWith(email: value));
    }
    return sourceOfTruthBloc.user().email;
  }
}
