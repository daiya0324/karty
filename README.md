# アプリケーション名
karty
# アプリケーション概要
美容室の顧客管理、施術記録を行うことができる
# URL
https://karty-37557.herokuapp.com/
# テスト用アカウント
・Basic認証パスワード：2222

・Basic認証ID：admin

・メールアドレス：test@test

・パスワード：111aaa
# 利用方法
## 施術記録投稿
・トップページのヘッダーからユーザー登録を行う
・来店履歴投稿画面から名前、来店日、担当者、カットの有無、カラーの有無、パーマの有無、トリートメントの有無、画像、備考を入力し投稿する。

# アプリケーションを作成した背景
以前美容室で働いていた際カルテを紙で管理しており、紙に記録する場合は記録するのに手間がかかり記録するのを後回しにしてしまったり、複数店舗あったためお客様がいつもと違う店舗に来店する際情報の共有に手間がかかってしまっていた為、いつでも手軽に記入できログイン情報がわかれば手軽に共有できるようアプリケーションを作成した。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/17dFt9b0tOfj8iRsoqt9Br65rehMz3ddHS9eg1Pcd3Hw/edit#gid=1785908763




# 実装予定の機能
・顧客プロフィール管理機能

・担当者を選択するとその担当者の顧客のみが表示される機能


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/ac7cec91cdfc7ba25fc7c5bfacc45581.png)](https://gyazo.com/ac7cec91cdfc7ba25fc7c5bfacc45581)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/ab15d929a8c33486928f73953f89976e.png)](https://gyazo.com/ab15d929a8c33486928f73953f89976e)
# 開発環境
・フロントエンド:HTML、CSS
・バックエンド:Ruby
・インフラ:Heroku
・テスト:RSpec
・テキストエディタ:Visual Studio Code
・タスク管理:GitHub

# ローカルでの動作環境
以下のコマンドを順に実行。

% git clone https://github.com/daiya0324/karty.git

% cd karty

% bundle install

% yarn install
# 工夫したポイント
顧客の個人情報などが記録されるため外部の人間に閲覧されることがないよう条件分岐を使用し表示される範囲を制限した。
顧客情報を検索により簡単に見つけることができる様にした。