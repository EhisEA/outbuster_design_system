import 'package:flutter/foundation.dart';
import 'dart:async';

/// This can be used to delay certain action until user have reached
/// desired input/state
class Debouncer {
  /// Duration to wait for user to complete input
  final int milliseconds;
  final String? tag;
  Timer? _timer;

  Debouncer({
    required this.milliseconds,
    this.tag,
  });

  String get id => tag ?? DateTime.now().toIso8601String();

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  Future<void> runAsync(Future Function() action) async {
    _timer?.cancel();
    _timer = Timer.periodic(
      Duration(milliseconds: milliseconds),
      (timer) async {
        await action();
        timer.cancel();
      },
    );
  }

  void cancel() {
    _timer?.cancel();
  }
}
