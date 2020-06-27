## アプリケーション情報
### アプリケーション概要
- 猫専用SNSアプリを作成しました。
- 接続先情報
- URL :https://frozen-cliffs-96732.herokuapp.com/

### 確認用アカウント
- メールアドレス: test@test
- パスワード:testtest
### 確認用アカウント2
- メールアドレス: test2@test
- パスワード: testtest

## 実装機能
- ユーザ新規登録
- ログイン/ログアウト
- テキスト投稿、画像投稿
- コメント投稿
- 投稿詳細、編集、削除
- 投稿検索

## 実装予定
- 猫種ごとのカテゴリ機能
- パンくずリスト

## 企画背景
既存サービスのSNS（TwitterやInstagram）で猫専用のアカウントをお持ちの方や、これから新たに飼い猫のSNSアカウントを作成されようとしている方に向けて本アプリを作成いたしました。
　猫専用にすることで猫を飼っている方、または飼っていないけど猫が好きという方もより猫の観賞を楽しむことができます。また本アプリでは既存SNSサービスにあるフォローやフォロワーの数を表示させる機能はありませんので、フォロワー数が増えなくて悩んでいる方でもフォロワー数を気にせず、気軽に楽しめるようになっております。

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
