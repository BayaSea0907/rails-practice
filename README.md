### 構築手順
1. Railsアプリケーション作成 (rbenvやbundlerはインストール済みだったので省略)
   * `bundle exec rails new . --database=mysql -M -C -T`
2. MySQLのインストール (自前のiMacにインストールしたことがなかったので)
   * `brew install mysql`
   * rootでmysqlにログインしてスキマ作成と、本番DB用のユーザー作成
      `$ mysql -u root`

      ```sql
      CREATE DATABASE rails_practice_development;
      CREATE DATABASE rails_practice_test;
      CREATE DATABASE rails_practice_production;

      # 本番用ユーザー作成
      CREATE USER rails_practice IDENTIFIED BY 'xxxxxxxx';
      GRANT ALL ON rails_practice_production.* TO rails_practice;
      ```
3. Rspecのインストール
   * `bundle exec rails generate rspec:install`
4. テーブル作成
