#ChatSpace DB設計  

##usersテーブル
|Columns|Type|Options|
|-------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

###Association
- has_many :messages
- has_many :groups, through: :groups_users

##messagesテーブル
|Columns|Type|Options|
|-------|----|-------|
|body|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

###Association
- belongs_to :user
- belongs_to :group

##groupsテーブル
|Columns|Type|Options|
|-------|----|-------|
|name|string|null: false|

###Association
- has_many :messages
- has_many :users, through: :groups_users

##groups_usersテーブル
|Columns|Type|Options|
|-------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

###Association
- belongs_to :user
- belongs_to :group
