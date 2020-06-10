# chat-flutter
FlutterでiOS、Android向けに作る

## システム概要
要件定義書参照(これ載せていいのか？)
https://docs.google.com/document/d/1XVLTddje8m0mHy9oRyqP6eZl6CDhrY6qHYFW8fevPD8/edit

## 機能概要
システム概要の要件定義書参照

## 画面構成(遷移図)
adobeのリンクの載せる

## 開発環境
Flutter 1.17.3(2020/06/10現在・最新)

Dart version 2.8.4  

(Android Studio or VSCode)

Xcode 11.5(2020/06/10現在・最新)

`flutter doctor` で大体確認できる

## 環境構築
公式ドキュメント見ながらiOS, AndroidのHello world動かせる状態まで  
[FlutterでHello worldを動かすまでの環境構築手順（iOS, Android） - Qiita](https://qiita.com/unsoluble_sugar/items/deaa129fb289922c8634)

## 開発方針
・割り振るタスク単位でIssue作成→アサイン

・一旦レイアウトのみ作成(※Firebaseのプロジェクト・テーブル構造決まり次第連携を行う)

## 開発規約(決まり次第記述していく)
### Lintについて
一旦プロジェクトディレクトリ直下で`flutter format .`コマンドで整形したものを正とする。

[参考資料](https://flutter.dev/docs/development/tools/formatting)

## 参考情報
### チーム開発編
・[forkとcloneの違い](https://qiita.com/matsubox/items/09904e4c51e6bc267990)

・[ForkしてからPull Requestをするまでの流れ](http://kik.xii.jp/archives/179)

### Firebase編
・[Firebase Auth(メール認証)](https://qiita.com/superman9387/items/a86784e8ac7f3d08e900)

・[Firebase Firestoreの基本操作](https://gurutaka-log.com/flutter-firebase-firestore-sample)
