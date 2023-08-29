> 英語以外の言語で書かれたドキュメントでは、文章が不自然になることがあります。ドキュメントの改善にご協力いただける方は、[Pull request](https://github.com/cunarist/rust-in-flutter/pulls)をお願いいたします。いつもご協力に感謝いたします。

[![Pub Version](https://img.shields.io/pub/v/rust_in_flutter)](https://pub.dev/packages/rust_in_flutter)
[![Pub Popularity](https://img.shields.io/pub/popularity/rust_in_flutter)](https://pub.dev/packages/rust_in_flutter)
[![Pub Points](https://img.shields.io/pub/points/rust_in_flutter)](https://pub.dev/packages/rust_in_flutter)
[![GitHub Stars](https://img.shields.io/github/stars/cunarist/rust-in-flutter)](https://github.com/cunarist/rust-in-flutter/stargazers)
[![Build Test](https://github.com/cunarist/rust-in-flutter/actions/workflows/build_test.yaml/badge.svg)](https://github.com/cunarist/rust-in-flutter/actions/workflows/build_test.yaml?query=branch%3Amain)
[![GitHub License](https://img.shields.io/github/license/cunarist/rust-in-flutter)](https://github.com/cunarist/rust-in-flutter/blob/main/LICENSE)

# 🆎 Rust-In-Flutter

**「Rust をあなたの Flutter バックエンドとして、Flutter をあなたの Rust フロントエンドとしています。」**

![プレビュー](https://github.com/cunarist/rust-in-flutter/assets/66480156/be85cf04-2240-497f-8d0d-803c40536d8e)

使いやすさ、将来の拡張性、比類のないパフォーマンスを考慮して設計されたこの軽量フレームワークは、裏側ですべての複雑さを処理します。デリケートなビルドファイルをいじる必要はなく、開発中に過剰なコード生成もありません。このパッケージをアプリプロジェクトに追加するだけで、Flutter と Rust の組み合わせたコードを書く準備が整います！

## プラットフォームサポート

Flutter で利用可能なすべてのプラットフォームは[テスト](https://github.com/cunarist/rust-in-flutter/actions/workflows/build_test.yaml?query=branch%3Amain)されてサポートされています。難しいビルド設定は、このパッケージによって自動的に処理されます。

| Dev OS  | Linux | Android | Windows | macOS | iOS | Web |
| ------- | ----- | ------- | ------- | ----- | --- | --- |
| Linux   | ✅    | ✅      | -       | -     | -   | ✅  |
| Windows | -     | ✅      | ✅      | -     | -   | ✅  |
| macOS   | -     | ✅      | -       | ✅    | ✅  | ✅  |

## 利点（ベネフィット

- ライブラリクレートの任意の数を使用することができる Rust と Flutter の統合
- ブロッキングがない非同期の相互作用
- Dart からの簡単なリクエストと Rust からのレスポンスを伴う RESTful API
- Protobuf で実現する型安全性と柔軟性のあるメッセージ処理
- Rust から Dart へのストリーミング
- Dart のホットリスタート時に Rust ロジックを再起動
- ネイティブデータの送信時のメモリコピーなし

## Flutter の利用理由

Rust は高性能なネイティブプログラミングのための強力な言語ですが、グラフィカルユーザーインターフェースを構築するためのエコシステムはまだ成熟していません。`iced`、`egui`、`gtk-rs`などのいくつかの GUI フレームワークはすでに存在しますが、これらは Flutter が提供する広範なサポートとスムーズな開発体験には及びません。それは唯一、Flutter が単一のコードベースからすべての 6 つの主要プラットフォームにコンパイルできるからです。

Flutter は、見事なユーザーインターフェースを備えたクロスプラットフォームアプリケーションを構築するために非常に人気のある強力で多機能なフレームワークです。これは宣言的パターン、美しいウィジェット、ホットリロード、便利なデバッグツール、およびユーザーインターフェースに特化した専用のパッケージを提供します。

## Rust の利用理由

Dart は GUI アプリケーション向けの素晴らしいオブジェクト指向のモダンな言語ですが、ネイティブのガベージコレクションにより、要件を満たすことができない場合があります。そこで、Rust が登場し、Dart よりも約[2~40 倍高速](https://programming-language-benchmarks.vercel.app/dart-vs-rust)であり、さらに複数スレッドを活用することができます。

Rust は Stack Overflow で[最も愛されているプログラミング言語](https://survey.stackoverflow.co/2022#section-most-loved-dreaded-and-wanted-programming-scripting-and-markup-languages)として支持されています。そのネイティブなパフォーマンスは、ゼロキャストの抽象化哲学により高い生産性を実現します。多くの開発者は、将来的に Rust が C++の代替となる可能性を予測しています。Rust のシンプルさ、メモリの安全性、さまざまなシナリオでの優れたパフォーマンス、活気あるコミュニティ、堅牢なツールサポートが人気の向上に寄与しています。

# 🛠️ コンポーネントのインストール

> このセクションでは、システムに[Flutter SDK](https://docs.flutter.dev/get-started/install)がインストールされていることを前提としています。

Rust ツールチェーンのインストールは非常に簡単です。[公式のインストールページ](https://www.rust-lang.org/tools/install)にアクセスして、指示に従うだけです。

また、[Protobuf](https://protobuf.dev/)コンパイラをシステムにインストールする必要があります。詳しく知らない方のために説明すると、Protobuf は Google によって作成された人気のある言語中立の構造化メッセージ用のバイナリシリアル化形式です。[公式ドキュメント](https://grpc.io/docs/protoc-installation/)に記載されている方法に従えば、Protobuf コンパイラのインストールは簡単です。

インストールが完了したら、システムが準備できているか確認してください。Flutter SDK はさまざまなプラットフォームを対象とするためにいくつかの追加コンポーネントが必要かもしれません。出力に問題がなければ、準備が整っています！

```bash
rustc --version
protoc --version
flutter doctor
```

# 👜 Rust のテンプレートを適用する

> このセクションでは、既に Flutter プロジェクトを作成したことを前提としています。まだ作成していない場合は、[この素晴らしい公式チュートリアル](https://docs.flutter.dev/get-started/codelab)に従ってプロジェクトを作成してください。

まず、このパッケージを Flutter プロジェクトに追加します。

```bash
flutter pub add rust_in_flutter
```

単純に、Flutter プロジェクトのディレクトリで以下のコマンドをコマンドラインで実行してください。

```bash
dart run rust_in_flutter template
```

このコマンドを実行した後、新しいファイルとフォルダが生成され、スターター Rust テンプレートとなります。

```diff
    my_flutter_project/
    ├── android/
    ├── ios/
    ├── lib/
*   │   ├── main.dart
    │   └── ...
    ├── linux/
+   ├── messages/
+   │   ├── interaction.proto
+   │   └── sample_schemas.proto
+   ├── native/
+   │   ├── hub/
+   │   │   ├── src/
+   │   │   ├── build.rs
+   │   │   └── Cargo.toml
+   │   ├── sample_crate/
+   │   │   ├── src/
+   │   │   └── Cargo.toml
+   │   └── README.md
    ├── web/
    ├── windows/
*   ├── .gitignore
+   ├── Cargo.toml
*   ├── pubspec.yaml
    └── ...
```

`./native/README.md`ファイルを最初に読むことを忘れないでください。コードにはさまざまなコメントが記述されており、構造を理解するのに役立ちます。また、本番環境では`sample_crate`を削除することを検討するかもしれません。すでに使用したい Rust クレートがある場合は、それを`./native`内に配置し、`hub`クレートの依存として設定してください。

これで、`./native/hub/src/lib.rs`に移動して、Rust のコードを書き始めることができます！

# 👟 実行とビルド

## ネイティブプラットフォーム向け

以下のコマンドを使用して、ネイティブプラットフォーム向けの Flutter アプリを実行およびビルドできます。

アプリを実行するには：

```bash
flutter run
```

特定のプラットフォーム向けにアプリをビルドするには：

```bash
flutter build (platform)  # Replace it with a platform name
```

## ウェブ向け

Web 上でアプリを実行またはビルドする前に、Rust から手動で WebAssembly モジュールをビルドする必要があります。Flutter アプリは Web 上のデバッグモードでかなり遅いことが知られていますので、注意してください。

ウェブアプリケーションを提供するには：

```bash
dart run rust_in_flutter wasm
flutter run --profile  # Choose a browser
```

最適化されたリリースバージョンのウェブアプリケーションをビルドするには：

```bash
dart run rust_in_flutter wasm --release
flutter build web
```

# 🧱 コードの書き方

## Dart からのリクエスト、Rust からのレスポンス

アプリが大きくなるにつれて、新しい Rust API エンドポイントを定義する必要があります。

Dart から Rust に配列と文字列を送信し、それに対していくつかの計算を行う新しいボタンを作成したいとします。リクエストを送信してレスポンスを待つ方法を理解するために、以下の手順に従うことができます。

[デフォルトの例](https://github.com/cunarist/rust-in-flutter/tree/main/example)を起点にして、Dart でユーザーの入力を受け付けるボタンウィジェットを作成します。

```dart
// lib/main.dart
...
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () async {},
      child: Text("Request to Rust"),
    ),
...
```

では、Protobuf を使用してメッセージスキーマを作成しましょう。

```proto
// messages/interaction.proto
...

message SomeDataGetRequest {
  repeated int32 input_numbers = 1;
  string input_string = 2;
}

message SomeDataGetResponse {
  repeated int32 output_numbers = 1;
  string output_string = 2;
}
```

次に、`.proto`ファイルから Dart と Rust のメッセージコードを生成します。このコマンドは`./native/hub/build.rs`を呼び出します。

```bash
cargo check
```

`onPressed`関数は Rust にリクエストを送信する必要があります。まず、`RustRequest`オブジェクトを作成しましょう。

```dart
// lib/main.dart
...
import 'package:my_flutter_project/messages/interaction.pbserver.dart';
import 'package:rust_in_flutter/rust_in_flutter.dart';
...
ElevatedButton(
  onPressed: () async {
    final requestMessage = SomeDataGetRequest(
      inputNumbers: [3, 4, 5],
      inputString: 'Zero-cost abstraction',
    );
    final rustRequest = RustRequest(
      address: 'my-category/some-data',
      operation: RustOperation.Read,
      bytes: requestMessage.writeToBuffer(),
    );
    final rustResponse = await requestToRust(rustRequest)
  },
  child: Text("Request to Rust"),
),
...
```

`address`は、アプリの設計に適した仮想リソースを指す任意の文字列であり、スラッシュで階層化されたケバブケースの文字列で表されます。`operation`は、このシステムが RESTful API の定義に従うため、create、read、update、delete のいずれかになります。名前が示すように、`bytes`は通常 Protobuf のシリアル化によって作成される単純なバイト配列です。

`requestToRust`関数はリクエストを Rust に送信し、`RustResponse`オブジェクトを返します。

したがって、新しい API アドレスは `my-category/some-data` です。Rust のリクエストハンドラ関数がこれを受け入れることを確認してください。

```rust
// native/hub/src/with_request.rs
...
use crate::bridge::api::RustResponse;
use crate::sample_functions;
...
let layered: Vec<&str> = rust_request.address.split('/').collect();
let rust_response = if layered.is_empty() {
    RustResponse::default()
} else if layered[0] == "basic-category" {
    if layered.len() == 1 {
        RustResponse::default()
    } else if layered[1] == "counter-number" {
        sample_functions::calculate_something(rust_request).await
    } else {
        RustResponse::default()
    }
} else if layered[0] == "my-category" {
    if layered.len() == 1 {
        RustResponse::default()
    } else if layered[1] == "some-data" {
        sample_functions::some_data(rust_request).await
    } else {
        RustResponse::default()
    }
} else {
    RustResponse::default()
};
...
```

`sample_functions::some_data` は私たちの新しいエンドポイントの Rust 関数です。このシンプルな API エンドポイントは、配列の各要素に 1 を加え、文字列内のすべての文字を大文字に変換して返します。メッセージスキーマは操作の種類によって異なるため、マッチ文でインポートされます。

```rust
// native/hub/src/sample_functions.rs
...
use crate::bridge::api::RustOperation;
use crate::bridge::api::RustRequest;
use crate::bridge::api::RustResponse;
...
pub async fn some_data(rust_request: RustRequest) -> RustResponse {
    match rust_request.operation {
        RustOperation::Create => RustResponse::default(),
        RustOperation::Read => {
            use crate::messages::interaction::{SomeDataGetRequest, SomeDataGetResponse};

            let request_message = SomeDataGetRequest::decode(&rust_request.bytes[..]).unwrap();

            let new_numbers: Vec<i32> = request_message
                .input_numbers
                .into_iter()
                .map(|x| x + 1)
                .collect();
            let new_string = request_message.input_string.to_uppercase();

            let response_message = SomeDataGetResponse {
                output_numbers: new_numbers,
                output_string: new_string,
            };
            RustResponse {
                successful: true,
                bytes: response_message.encode_to_vec(),
            }
        }
        RustOperation::Update => RustResponse::default(),
        RustOperation::Delete => RustResponse::default(),
    }
}
...
```

最後に、Dart で Rust からの応答を受け取ると、それに含まれるバイトデータを使ってさまざまな操作を行うことができます。

```dart
// lib/main.dart
...
import 'package:my_flutter_project/messages/interaction.pbserver.dart';
import 'package:rust_in_flutter/rust_in_flutter.dart';
...
    final rustResponse = await requestToRust(rustRequest);
    final responseMessage = SomeDataGetResponse.fromBuffer(
      rustResponse.bytes,
    );
    print(responseMessage.outputNumbers);
    print(responseMessage.outputString);
  },
  child: Text("Request to Rust"),
),
...
```

そして、コマンドラインで出力された内容を確認できます！

```
flutter: [4, 5, 6]
flutter: ZERO-COST ABSTRACTION
```

ここでは単にメッセージを出力しているだけですが、実際のアプリではこのレスポンスデータを使用して Flutter のウィジェットをリビルドすることができます。

このような RESTful API のパターンを拡張し、必要に応じて数百、数千のエンドポイントを作成することができます。Web のバックグラウンドがある場合、このシステムは馴染みのあるものに見えるかもしれません。

## Rust から Dart へのストリーミング

Rust から Dart に毎秒増加する数値を送信したいとします。この場合、Dart が繰り返しリクエストを送信するのは非効率です。ここでストリーミングが必要になります。

[デフォルトの例](https://github.com/cunarist/rust-in-flutter/tree/main/example)を起点にします。Rust で非同期関数を生成します。

```rust
// native/hub/src/lib.rs
...
mod sample_functions;
...
crate::spawn(sample_functions::keep_drawing_mandelbrot());
crate::spawn(sample_functions::keep_sending_numbers()); // ADD THIS LINE
while let Some(request_unique) = request_receiver.recv().await {
...
```

メッセージスキーマを定義します。

```proto
// messages/interaction.proto
...
message IncreasingNumbersSignal { int32 current_number = 1; }
...
```

`.proto`ファイルから Dart と Rust のメッセージコードを生成します。

```bash
cargo check
```

永遠に実行される非同期の Rust 関数を定義し、毎秒 Dart に数字を送信します。

```rust
// native/hub/src/sample_functions.rs
...
use crate::bridge::api::RustSignal;
use crate::bridge::send_rust_signal;
...
pub async fn keep_sending_numbers() {
    let mut current_number: i32 = 1;
    loop {
        use crate::messages::interaction::IncreasingNumbersSignal;

        crate::time::sleep(std::time::Duration::from_secs(1)).await;

        let signal_message = IncreasingNumbersSignal { current_number };
        let rust_signal = RustSignal {
            address: String::from("my-category/increasing-numbers"),
            bytes: signal_message.encode_to_vec(),
        };
        send_rust_signal(rust_signal);

        current_number += 1;
    }
}
...
```

最後に、Dart で`StreamBuilder`を使用して信号を受け取り、`where`メソッドでアドレスでフィルタリングし、ウィジェットを再構築します。

```dart
// lib/main.dart
...
import 'package:my_flutter_project/messages/interaction.pbserver.dart';
import 'package:rust_in_flutter/rust_in_flutter.dart';
...
children: [
  StreamBuilder<RustSignal>(
    stream: rustBroadcaster.stream.where((rustSignal) {
      return rustSignal.address == "my-category/increasing-numbers";
    }),
    builder: (context, snapshot) {
      final received = snapshot.data;
      if (received == null) {
        return Text("Nothing received yet");
      } else {
        final singal = IncreasingNumbersSignal.fromBuffer(
          received.bytes,
        );
        final currentNumber = singal.currentNumber;
        return Text(currentNumber.toString());
      }
    },
  ),
...
```

以上の内容です。

# ✋ よくある質問（FAQ）

**Q**. Rust をいつ使用すべきですか？

**A**. 理想的には、**Flutter**がクロスプラットフォームのユーザーインターフェースを担当し、**Rust**がビジネスロジックを扱うようにします。フロントエンドとバックエンドを完全に分離することができ、Dart と Rust のコードが互いに切り離すことができます。これらの 2 つの世界はストリームを介して通信します。

**Q**. Dart と Rust の間でデータはどのように渡されますか？

**A**. Dart と Rust の間で送信されるデータは基本的にバイト配列です。Dart では`Uint8List`として、Rust では`Vec<u8>`として表現されます。MessagePack シリアル化の使用をお勧めしますが、高解像度の画像やファイルデータなど、任意の種類のバイトデータを送信することができます。必要な詳細がない場合は、空のバイト配列を送信することもできます。

**Q**. Rust クレートから生成されたライブラリファイルはどこにありますか？

**A**. Rust-In-Flutter のすべてのビルド設定により、Rust クレートからコンパイルされたすべてのライブラリファイルが最終ビルドに適切に含まれ、配布の準備が整います。そのため、ライブラリファイルをバンドルする必要はありません。

**Q**. Android アプリのビルドに失敗しました。どうすればよいですか？

**A**. Android アプリでは、[この問題](https://github.com/rust-lang/rust/pull/85806)のために Rust 1.68 以上を使用する必要があります。また、`./android/app/build.gradle`ファイルに`ndkVersion`変数が存在している必要がありますが、Flutter SDK 3.7 以前で Flutter プロジェクトを作成した場合には欠落している可能性があります。この問題を解決するには、[このディスカッション](https://github.com/cunarist/rust-in-flutter/discussions/60)を参照してください。

**Q**. 助けを求める場所はどこですか？

**A**. 問題に遭遇した場合は、[ディスカッションページ](https://github.com/cunarist/rust-in-flutter/discussions)を訪れ、アシスタンスを求めるための Q&A スレッドを開いて自由に質問してください。追加のガイドを読み、質問をするためにこのページを訪れてください。

**Q**. 並行処理は、内部でどのように機能しますか？

**A**. ネイティブプラットフォームでは、Dart は通常通りシングルスレッドで実行されますが、Rust は非同期の`tokio`ランタイムを利用してコンピュータのすべてのコアを活用し、そのランタイム内で効率的に非同期タスクを実行します。Web では、Dart は引き続きメインスレッドで実行されますが、Rust は単一の Web ワーカー（スレッド）内でのみ動作します。これは、Web ワーカーがメモリを共有しないという必要な制約ですが、Rust は引き続き Rust の`Future`を JavaScript の`Promise`に変換して、それらを JavaScript イベントループに渡すことで、その専用のスレッド内で並行操作を実行することができます。

**Q**. メッセージを完全に型安全にする方法は？

**A**. MessagePack シリアル化を使用する際、VSCode などの IDE は完全なインテリセンスサポートを提供しない場合があり、型に関連する問題が発生する可能性があります。IDE で適切な型チェックを行うためには、MessagePack の代わりに Protobuf を選抶することができます。Protobuf はデータ型に関連するエラーを防止するタイプセーフなシリアル化方法です。ただし、このパッケージには Protobuf の統合は含まれていないため、実装の詳細については[公式ドキュメント](https://protobuf.dev/)を参照してください。

**Q**. ビルドした Web バージョンで、ブラウザのコンソールにクロスオリジンポリシーに関連するエラーが表示されます。

**A**. バイナリをビルドし、展開の準備を整えたら、ウェブサーバーを設定して、その応答にクロスオリジン関連の HTTP ヘッダーを含めるようにしてください。`cross-origin-opener-policy`を`same-origin`に、`cross-origin-embedder-policy`を`require-corp`または`credentialless`に設定します。これらのヘッダーにより、お客様のウェブサイトを利用するクライアントは、このフレームワークで必要な`SharedArrayBuffer`ウェブ API にアクセスできるようになります。`SharedArrayBuffer`は、ウェブ上の共有メモリのような機能を持っています。

**Q**. Rust のコードの変更は Dart のホットリスタートに反映されますか？

**A**. いいえ、更新された Rust のコードは Dart のホットリスタートでは読み込まれません。変更を反映させるためには、アプリを再コンパイルする必要があります。アプリのバイナリは再度新しくコンパイルされた Rust のライブラリファイルにリンクされる必要があります。この制限は Rust のコンパイルプロセスによるもので、Rust はホットリスタート機能を本質的にサポートしていないためです。ただし、Dart のホットリスタートは Rust のロジック、つまり`main()`関数を再起動します。

# 🌟 貢献者の皆様へ

このプロジェクトの開発へのご貢献、心から感謝しています！

[![GitHub 貢献者（allcontributors.org経由）](https://contrib.rocks/image?repo=cunarist/rust-in-flutter)](https://github.com/cunarist/rust-in-flutter/graphs/contributors)

# ☕ サポートをお願いします

Rust-In-Flutter の機能を活用し、役立つと感じている場合は、このプロジェクトのサポートを検討してみてください。寄付いただいた方々の寛大な支援により、Rust-In-Flutter の保守と開発が行われ、継続的な改善と成長が実現されます。😉

もし気に入っていただけたら、[コーヒーをおごっていただけると嬉しいです](https://www.buymeacoffee.com/cunarist)。
