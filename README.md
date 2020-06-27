## アプリケーション情報
### アプリケーション概要
- 猫専用SNSアプリを作成しました。
- 接続先情報
- URL :https://frozen-cliffs-96732.herokuapp.com/
- ID/Pass
- ID:
- Pass: 
### テスト用アカウント等
- メールアドレス: 
- パスワード:

## 開発状況
## 開発環境
- Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code
### 開発期間と平均作業時間
- 開発期間：約2週間
- 1日あたりの平均作業時間：約3時間
### 開発体制
- 人数：1名


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|

### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|text|string|null:false|
|image|text|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|tweet_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet
