### 構築手順
1. Railsアプリケーション作成 (rbenvやbundlerはインストール済みだったので省略)
   * `bundle exec rails new . --database=mysql -M -C -T`
2. MySQLのインストール (自前のiMacにインストールしたことがなかったので)
   * `brew install mysql`
3. データベース、テーブル生成
   * `bundle exec rails db:prepare`
3. Rspecのインストール
   * `bundle exec rails generate rspec:install`
4. テーブル作成
