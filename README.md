### 起動手順
1. Rubyのバージョン設定
   * `rbenv local 2.7.0`
2. Gemのインストール
   * `bundle install`
3. MySQLのインストール (自前のiMacにインストールしたことがなかったので)
   * `brew install mysql`
   * `$ mysql.server start`
4. データベース、テーブル生成
   * `bundle exec rails db:prepare`
   * `bundle exec rails db:migrate`
5. Webpackerのインストール
   * `bundle exec rails webpacker:install`
6. サーバー起動
   * `bundle exec rails s`
7. ページにアクセス
   * http://localhost:3000
