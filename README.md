# Sample App

Ruby による静的なページを作ってみました。

# DEMO

- アプリケーション開発にとって最適なスタート地点です。
- これは、次の教材で作られたサンプルアプリケーションです。
- [_Ruby on Rails チュートリアル_](https://railstutorial.jp/)
  （第 7 版）
  [Michael Hartl](https://www.michaelhartl.com/) 著

# Features

- 「自動化テスト」の雰囲気を掴める
- 良いテストを書くことで、自信をもってリファクタリングを行うことができる

# Requirement

- Ruby 3.2.2

# Usage

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。  
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ gem install bundler
$ bundle install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事にパスしたら、Rails サーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```

詳しくは、[_Ruby on Rails チュートリアル_](https://railstutorial.jp/)
を参考にしてください。

# Note

3 章以降はここに機能を足していく予定

# License

[Ruby on Rails チュートリアル](https://railstutorial.jp/) 内にあるソースコードは MIT ライセンスと Beerware ライセンスのもとで公開されています。  
詳細は [LICENSE.md](LICENSE.md) をご覧ください。
