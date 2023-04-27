import 'package:flutter/foundation.dart';

class SuperProvider<T>  extends ChangeNotifier {
  T? _t;

  T? get value => _t;
  set value(T? t)  {_t = t; notifyListeners(); }
}