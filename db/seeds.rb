# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"山田太郎",address:"東京都港区", email:"ta@abc.jp", birthday:"1975-02-01")
User.create(name:"田中花子",address:"東京都港区", email:"hk@abc.jp", birthday:"1998-02-01")
User.create(name:"山崎隆文",address:"東京都品川区", email:"tn@abc.jp", birthday:"1975-10-31")
User.create(name:"佐々一郎",address:"東京都品川区", email:"ic@abc.jp", birthday:"1960-02-01")
User.create(name:"大友裕子",address:"東京都港区", email:"to@abc.jp", birthday:"2000-02-01")
User.create(name:"山田太郎",address:"北海道札幌市", email:"yt@abc.jp", birthday:"1995-11-17")
