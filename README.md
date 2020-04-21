# タイトル

### 環境
* [x] Ruby: 2.7
* [x] Rails: 6.0.2.2
* [x] Database: MySQL 8.0.19
* [x] Test: RSpec
* [x] Lint: Rubocop
* [ ] Template: haml

### 追加要件
* [ ] ログインができ、投稿者の保存を行う
* [ ] CircleCIでRSpec・Lint(Rubocopなど)のチェックをする
* [ ] Docker Composeで環境構築をする
* [ ] 開発に便利なgemなどがあれば随時追加してみてください

### 構築手順
1. GitHubのリポジトリ作成 & Slackインテグレーションを設定
2. Railsアプリケーション作成 (rbenvやbundlerはインストール済みだったので省略)
   * `bundle exec rails new . --database=mysql -M -C -T`
3. MySQLのインストール (自前のiMacにインストールしたことがなかったので)
   * `brew install mysql`
   * rootでログインしてスキマ作成
4. Rspec設定
   * `gem 'rspec-rails'` を追加
   * `bundle exec rails generate rspec:install`
5. Rubocop及び各種Gem追加
6. テーブル作成
7. アプリケーション開発
