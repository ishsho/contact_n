# アプリケーション名
ContactNote
</br>
</br>

# アプリケーション概要
社内の伝達事項を、円滑にわかりやすく行えるアプリケーション。
</br>
</br>

# URL

</br>
</br>

# テスト用アカウント
・ Basic認証ID : ishsho  
・ Basic認証パスワード : 1203  
・ メールアドレス : test@test
・ パスワード : 111111
</br>
</br>

# 利用方法
トピックス投稿
---
___
1.URLに遷移するとログイン画面が表示される。  
2.
</br>
</br>

項目投稿
---
___
1.  
2. 
3.  
</br>
</br>

# アプリケーションを作成した背景

</br>
</br>

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1hPcdfzZ0Nhv3sjtiWoG7QFnbUg65fBB31BzNE2ETZWc/edit#gid=982722306)
</br>
</br>

# 実装した機能についての画像やGIFおよびその説明

</br>
</br>

# 実装予定の機能

</br>
</br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/73b66506372832e2adb428dd34f9de93.png)](https://gyazo.com/73b66506372832e2adb428dd34f9de93)
</br>
</br>

# 開発環境

</br>
</br>

# 工夫したポイント

</br>
</br>

# テーブル設計

## usersテーブル

| Column                |  Type      |  Options                    |
|-----------------------|------------|-----------------------------|
| name                  | string     | null: false                 |
| email                 | string     | null: false, unique: true   |
| encrypted_password    | string     | null: false                 |

### Association

- has_many :topics
- has_many :contents
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages



## topicsテーブル

| Column                |  Type      |  Options                       |
|-----------------------|------------|--------------------------------|
| title_name            | string     | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- has_many : contents
- belongs_to :user



## contentテーブル

| Column                |  Type      |  Options                       |
|-----------------------|------------|--------------------------------|
| content_title         | string     | null: false                    |
| topic                 | references | null: false, foreign_key: true |
| user                  | references | null: false, foreign_key: true |


### Association

- belongs_to : user
- belongs_to : topic



## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages



## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user