# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '建立两个账号'
u = User.new
u.email = 'admin@test.com'
u.password = '111111'
u.password_confirmation = '111111'
u.save

u = User.new
u.email = 'demo@test.com'
u.password = '111111'
u.password_confirmation = '111111'
u.save

puts '建立五个groups'
Group.create!(title: '天天用英语社群', description:'这里每天都要学习英语', user_id:'1')
Group.create!(title: '原则 英语原版书阅读', description:'	prinsiples，你值得阅读', user_id:'1')
Group.create!(title:'财富自由之路', description:'李笑来专栏，推荐去看', user_id:'1')
Group.create!(title:'筋络', description:'七经八脉', user_id:'1')
Group.create!(title:'demo', description:'demo创建的', user_id:'2')

puts '建立几个posts'
Post.create!(content: '英语很重要！', group_id:'1', user_id:'1')
Post.create!(content: '精读英文原版书！', group_id:'2', user_id:'1')
Post.create!(content: '践行！', group_id:'3', user_id:'2')
Post.create!(content: '按摩！', group_id:'4', user_id:'2')
Post.create!(content: '的莫！', group_id:'5', user_id:'1')

puts '第一个group多建立一些posts'
creat_posts = for i in 1...9 do
  Post.create!([content:'Post no. #{i}',group_id:'1', user_id:'1'])
end
