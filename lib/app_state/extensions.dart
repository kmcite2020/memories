import 'package:memories/main.dart';

String get randomID => Uuid().v4();

extension DynamicExtensions on dynamic {
  Widget text([double textScaleFactor = 1]) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(textScaleFactor),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad() => Padding(padding: EdgeInsets.all(8), child: this);
  Widget center() => Center(child: this);
}

extension MapExtensions<T> on Map<String, T> {
  Map<String, T> addItem(T item) => Map.of(this)..[(item as dynamic).id] = item;
  Map<String, T> removeItem(String id) => Map.of(this)..remove(id);
  Map<String, T> clearAll() => {};
}
