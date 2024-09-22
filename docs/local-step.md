# ローカルの開発手順

## パッケージのインストール(初めての場合)

```
flutter pub get
```

## 自動生成ファイル監視コマンド

```
dart run build_runner watch
```

## proto ファイルから dart の clinet を作成

```bash
# _genフォルダーに作成
 protoc --dart_out=grpc:./lib/_gen -I ./proto proto/v1/todo/todo.proto
```

## シュミレータ起動方法

### ターミナルで起動する方法

```
flutter run
```

### vscode のデバック機能で起動する方法

[手順 URL](https://ouni.jp/blog/flutter-vscode/)
