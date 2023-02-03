

# テーブル設計

## usersテーブル

| Column                |  Type      |  Options                    |
|-----------------------|------------|-----------------------------|
| name                  | string     | null: false                 |
| email                 | string     | null: false, unique: true   |
| encrypted_password    | string     | null: false                 |

### Association

- has_many :topics
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

### Association

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