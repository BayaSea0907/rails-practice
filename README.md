### 起動手順
1. Gemのインストール
   + `bundle install`
2. MySQLのインストール (自前のiMacにインストールしたことがなかったので)
   * `brew install mysql`
   * `$ mysql.server start`
3. データベース、テーブル生成
   * `bundle exec rails db:prepare`
4. サーバー起動
   * `bundle exec rails s`
5. ページにアクセス
   * http://localhost:3000
