# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Man","Woman","Accessory"]

categories.each do |category|
  1.upto(2) do |i|
    p = Product.new
    p.manager_id = i
    p.category = category
    p.manager_id = "jaewon"
    p.title = "#{p.category}#{i} apparel"
    p.content = "#{p.category}#{i} content"
    p.image_url = "#{p.category}0#{i}.jpg"
    p.save
  end
end
