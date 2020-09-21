# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## userテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
|nickname| string     | null: false                    |
| email  | string     | null:false                     |
|shop_name| string    | null:false                     |
|shop_address| string | null:false                     |
|shop_phone| integer  | null:false                     |
|password| string     | null:false                    |
|password_confirmation| string  | null:false           |
| payee  | string     | null:false                     |

### Association
- has_many :lend
- has_many :borrow

## lendテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
|lend_day | integer   | null: false                    |
|lend_time| integer   | null: false                    |
|lend_area | string   | null: false                    |
|hourly_pay| integer  | null: false                    |
|user_id   | references | null: false, foreign_key:true|
|borrow_id | references | null: false, foreign_key:true|

### Association
- belong_to :user
- has_one   :borrow

## borrowテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
|borrow_day | integer   | null: false                  |
|borrow_time | integer   | null: false                 |
|borrow_area | string   |null: false                   |
|user_id   | references | null: false, foreign_key:true|
|lend_id | references   | null: false, foreign_key:true|

## Association
- belong_to :user
- has_one   :lend