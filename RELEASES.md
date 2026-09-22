# v1.5.0.pre.1

## 日本語

Ruby 3.3 / 3.4対応の非公式プレビュー。Net::SSH 7.3、Net::SCP 4.1、Net::SFTP 4、Net::FTP 0.3、Net::Protocol 0.4へ更新し、BigDecimal / Base64 / Mutex_mを依存関係へ追加しました。RSA公開鍵読み込みと起動時のio-wait警告の回帰テストを追加しました。

GitHubからBundlerで導入してください。RubyGemsには公開していません。導入手順と要件は[README](https://github.com/annrie/photocopier/blob/v1.5.0.pre.1/README.md)に記載しています。

外部通信はテストでモック化しています。実サーバー・実DBでの同期は未検証です。まずバックアップを取り、使い捨てのステージング環境で検証してください。

## English

Unofficial Ruby 3.3 / 3.4 compatibility preview. Updates Net::SSH to 7.3, Net::SCP to 4.1, Net::SFTP to 4, Net::FTP to 0.3, and Net::Protocol to 0.4; declares BigDecimal / Base64 / Mutex_m. Adds RSA public-key parsing and startup io-wait warning regression tests.

Install from GitHub with Bundler; this fork is not published to RubyGems. See the [README](https://github.com/annrie/photocopier/blob/v1.5.0.pre.1/README.md) for installation and requirements.

Tests mock external operations. Synchronization against real servers/databases has not been verified. Back up first and validate in a disposable staging environment.
