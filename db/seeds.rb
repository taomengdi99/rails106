# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '建立四个groups'
Group.create!(title: '天天用英语社群', description:'这里每天都要学习英语')
Group.create!(title: '原则 英语原版书阅读', description:'	prinsiples，你值得阅读')
Group.create!(title:'财富自由之路', description:'李笑来专栏，推荐去看')
Group.create!(title:'筋络', description:'七经八脉')
