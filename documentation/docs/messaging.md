# Messaging

There are special comments that you can mark messages with.

## 📢 Channels

`[RINF:RUST-SIGNAL]` generates a message channel from Rust to Dart.

```proto title="Protobuf"
// [RINF:RUST-SIGNAL]
message MyDataOutput { ... }
```

```rust title="Rust"
MyDataOutput { ... }.send_signal_to_dart();
```

```dart title="Dart"
StreamBuilder(
  stream: MyDataOutput.rustSignalStream,
  builder: (context, snapshot) {
    final rustSignal = snapshot.data;
    if (rustSignal == null) {
      // Return an empty widget.
    }
    MyDataOutput message = rustSignal.message;
    // Return a filled widget.
  },
)
```

Use `[RINF:RUST-SIGNAL-BINARY]` to include binary data without the overhead of serialization.

```proto title="Protobuf"
// [RINF:RUST-SIGNAL-BINARY]
message MyDataOutput { ... }
```

```rust title="Rust"
let binary: Vec<u8> = vec![0; 64];
MyDataOutput { ... }.send_signal_to_dart(binary);
```

```dart title="Dart"
StreamBuilder(
  stream: MyDataOutput.rustSignalStream,
  builder: (context, snapshot) {
    final rustSignal = snapshot.data;
    if (rustSignal == null) {
      // Return an empty widget.
    }
    MyDataOutput message = rustSignal.message;
    Uint8List binary = rustSignal.binary;
    // Return a filled widget.
  },
)
```

`[RINF:DART-SIGNAL]` generates a message channel from Dart to Rust.

```proto title="Protobuf"
// [RINF:DART-SIGNAL]
message MyDataInput { ... }
```

```dart title="Dart"
MyDataInput( ... ).sendSignalToRust();
```

```rust title="Rust"
let mut receiver = MyDataInput::get_dart_signal_receiver()?;
while let Some(dart_signal) = receiver.recv().await {
    let message: MyDataInput = dart_signal.message;
    // Custom Rust logic here
}
```

Use `[RINF:DART-SIGNAL-BINARY]` to include binary data without the overhead of serialization.

```proto title="Protobuf"
// [RINF:DART-SIGNAL-BINARY]
message MyDataInput { ... }
```

```dart title="Dart"
final binary = Uint8List(64);
MyDataInput( ... ).sendSignalToRust(binary);
```

```rust title="Rust"
let mut receiver = MyDataInput::get_dart_signal_receiver()?;
while let Some(dart_signal) = receiver.recv().await {
    let message: MyDataInput = dart_signal.message;
    let binary: Vec<u8> = dart_signal.binary;
    // Custom Rust logic here
}
```

## 🔖 Attributes

`[RINF:RUST-ATTRIBUTE(...)]` writes an attribute above the generated message struct in Rust. This is useful when you want to automatically implement a trait for the message struct in Rust.

```proto title="Protobuf"
// [RINF:RUST-ATTRIBUTE(#[derive(Hash)])]
message MyDataInput { ... }
```
