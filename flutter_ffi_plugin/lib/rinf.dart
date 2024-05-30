/// This module supports communication with Rust.
library;

import 'dart:typed_data';
import 'src/exports.dart';

export 'src/interface.dart' show RustSignal;

/// Prepares the native interface
/// needed to communicate with Rust.
Future<void> prepareInterface(HandleRustSignal handleRustSignal) async {
  await prepareInterfaceExtern(handleRustSignal);
}

/// Starts the `main` function in Rust.
void startRustLogic() async {
  startRustLogicExtern();
}

/// Sends a signal to Rust.
void sendDartSignal(
  int messageId,
  Uint8List messageBytes,
  Uint8List binary,
) async {
  sendDartSignalExtern(
    messageId,
    messageBytes,
    binary,
  );
}
