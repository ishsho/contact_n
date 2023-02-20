# アプリケーション名
<h2>Contact Note</h2>
</br>
</br>

# アプリケーション概要
「社内等、様々なグループで共有すべき情報・伝達事項を、円滑にわかりやすく管理したい」がコンセプトです。  
</br>
共有すべき情報を、ジャンルごとにわかりやすく整理でき、また新たに更新した情報をすぐに確認できます。  
</br>
少しでも「共有すべき情報の確認」でのストレスを軽減できるようになればと願いを込めて作成したアプリケーションとなっています。
</br>
</br>

# URL
https://contact-note.onrender.com/
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
HEADINGの投稿
---
1.URLに遷移すると新規登録・ログインを行うトップページに遷移する。  
2.ログインすると、ユーザー用のトップページに遷移する。  
3.ページ下部にあるHEADINGの作成より、伝達事項のおおまかなジャンル名を記入し作成する。（例：「各種申請」等）  
4.HEADING欄に、作成したジャンル名が追記されたことを確認する。
</br>
</br>

項目投稿
---
1.HEADINGの各項目名にカーソルを合わせると、コンテンツの追加がドロップダウンされ、クリックするとコンテンツ編集画面に遷移する。
2.コンテンツ内容を記載し、トップ画面に戻ると、該当のHEADINGのドロップダウン内に追加したコンテンツのタイトルが表示される。
3.タイトルをクリックするとコンテンツの内容を確認できる。  
4.また新規登録・更新したコンテンツはページ上部にある「新着情報」の欄に表示され、そちらからも各コンテンツの内容ページに遷移できる。
</br>
</br>

# アプリケーションを作成した背景  
前職で経験した伝達方法に対してのストレス、こちらがこのContact Noteを作成しようと考えたきっかけになります。  
</br>
前職では全社員に向ける伝達・連絡事項の共有について、内容を記載したデータをPDF化し、全社員に社内メールに添付し一斉送信するという方法をとっていました。  
</br>
しかし再度詳細を確認する際、どのPDFファイルに記載されていたか失念してしまった際は、いくつかのPDFファイルを開いて探す必要があり、その手間が非常に無駄だと感じていました。  
</br>
そこで項目ごとに伝達事項を確認でき、更新した内容も新着情報として確認がしやすいアプリが欲しいと感じたことを思い出し、このアプリを作成しました。

</br>
</br>

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1hPcdfzZ0Nhv3sjtiWoG7QFnbUg65fBB31BzNE2ETZWc/edit#gid=982722306)
</br>
</br>

# 実装した機能についての画像やGIFおよびその説明
1.ページ下部にあるHEADINGの作成より、伝達事項のおおまかなジャンル名を記入し作成する。  
[![Image from Gyazo](https://i.gyazo.com/92faa297e4ea4d8418d95e2d741684b2.gif)](https://gyazo.com/92faa297e4ea4d8418d95e2d741684b2)  
</br>  
2.HEADINGの各項目名にカーソルを合わせると、コンテンツの追加がドロップダウンされ、クリックするとコンテンツ編集画面に遷移する。内容を記載し、「作成」ボタンをプッシュする。
[![Image from Gyazo](https://i.gyazo.com/cdc13aca2693db73e4c0431ca94da60c.gif)](https://gyazo.com/cdc13aca2693db73e4c0431ca94da60c)  
</br>  
3.トップ画面に戻ると、該当のHEADINGのドロップダウン内に追加したコンテンツのタイトルが表示される。  
[![Image from Gyazo](https://i.gyazo.com/27216c957d22144085af4059e1c9bb6f.gif)](https://gyazo.com/27216c957d22144085af4059e1c9bb6f)  
</br>  
4.新規登録・更新したコンテンツはページ上部にある「新着情報」の欄に表示され、そちらからも各コンテンツの内容ページに遷移できる。  
[![Image from Gyazo](https://i.gyazo.com/c331ea84baa7969912f7d3c5ac053c78.gif)](https://gyazo.com/c331ea84baa7969912f7d3c5ac053c78)

</br>
</br>

# 実装予定の機能
1.チャット機能  
2.画像の複数枚登録。またtext_areaにスワイプし、保存できる機能
3.よく見るページをお気に入り登録し、マイページより管理できる機能  
4.検索ツール
</br>
</br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/73b66506372832e2adb428dd34f9de93.png)](https://gyazo.com/73b66506372832e2adb428dd34f9de93)
</br>
</br>

# 開発環境
HTML・CSS・Ruby・Ruby on Rails・JavaScript
</br>
</br>

# 工夫したポイント
とにかくシンプルに、直感的に使用できるように工夫しました。  
また使用にあたりストレスができるだけ発生しないようドロップダウンを使用する、text_areaが行に応じて可変するなど、自分自身が様々なアプリを使用する際に感じるストレスをできるだけ排除したいという点を考えて作成しました。
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