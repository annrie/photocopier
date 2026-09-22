# Photocopier — Ruby 3 / OpenSSL 3 compatibility fork

[![Tests](https://github.com/annrie/photocopier/actions/workflows/ruby.yml/badge.svg)](https://github.com/annrie/photocopier/actions/workflows/ruby.yml)

## 日本語

これは[welaika/photocopier](https://github.com/welaika/photocopier)の非公式フォークです。
Photocopierはファイル転送用のFTP/SSHアダプターで、[WordmoveのRuby 3対応フォーク](https://github.com/annrie/wordmove)から使用します。
上流の作者・ライセンス表示を保持しています。

Ruby **3.3 / 3.4**を対象に、Net::SSH 7.3、Net::SCP 4.1、Net::SFTP 4へ依存関係を更新しました。
Net::FTP 0.3、Net::Protocol 0.4を指定し、Ruby 3.2以降で不要になった`io-wait`の読み込み警告を避けます。
ActiveSupportが使用するBigDecimal / Base64 / Mutex_mも明示的に宣言しています。

### 導入

Wordmoveから利用する場合は[WordmoveのREADME](https://github.com/annrie/wordmove#readme)に従ってください。
他のBundlerプロジェクトではGemfileへ追加します。

```ruby
gem 'photocopier', git: 'https://github.com/annrie/photocopier.git', tag: 'v1.5.0.pre.1'
```

その後`bundle install`を実行してください。このフォークはRubyGemsには公開していません。
FTP利用にはlftp、SSHのディレクトリ同期にはrsyncとSSHが必要です。

### 検証と開発

```sh
bundle install
bundle exec rake
```

`.ruby-version`は開発用に3.3.12を選びます。rbenvで別の対応版を使う際は`RBENV_VERSION`を指定してください。
既存テストに加え、RSA公開鍵の読み込みと別プロセスからの起動を検証します。
外部通信はモック化しており、実サーバーとのSSH/FTP転送は未検証のプレビュー版です。
問題は[このフォークのIssues](https://github.com/annrie/photocopier/issues)へ報告してください。

[変更履歴](CHANGELOG.md) / [上流のAPI説明（英語・旧版の導入手順を含む）](docs/upstream-readme.md)

## English

This is an unofficial fork of [welaika/photocopier](https://github.com/welaika/photocopier), the FTP/SSH transfer adapter used by the [Wordmove Ruby 3 compatibility fork](https://github.com/annrie/wordmove).
Upstream authorship and licensing are preserved.

Targets Ruby **3.3 / 3.4** with Net::SSH 7.3, Net::SCP 4.1, and Net::SFTP 4.
Net::FTP 0.3 and Net::Protocol 0.4 avoid loading the deprecated `io-wait` shim on Ruby 3.2+.
BigDecimal / Base64 / Mutex_m, used by ActiveSupport, is declared explicitly.

### Installation

For Wordmove, follow the [Wordmove README](https://github.com/annrie/wordmove#readme).
In another Bundler project, add this to your Gemfile:

```ruby
gem 'photocopier', git: 'https://github.com/annrie/photocopier.git', tag: 'v1.5.0.pre.1'
```

Run `bundle install`. This fork has not been published to RubyGems.
FTP requires lftp; SSH directory synchronization requires rsync and SSH.

### Testing and development

```sh
bundle install
bundle exec rake
```

The development `.ruby-version` selects 3.3.12; set `RBENV_VERSION` to use another supported version with rbenv.
Tests cover existing behavior, RSA public-key parsing, and loading in a separate process.
External operations are mocked. This is a preview without verified SSH/FTP transfers against real servers.
Report problems to [this fork's Issues](https://github.com/annrie/photocopier/issues).

[Changelog](CHANGELOG.md) / [Upstream API documentation (English; includes historical installation instructions)](docs/upstream-readme.md)

## License / ライセンス

MIT — see [LICENSE](LICENSE). Original authors retain their copyright. / 原著作者の著作権表示を保持しています。
