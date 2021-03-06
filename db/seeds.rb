# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Man","Woman","Accessory"]
catagories2 = ["newarrival","tshirt","shirt","cardigan","jacket","pants",
"shorts","denim","homewear","accessory","sale"]
categories.each do |category|
  1.upto(2) do |i|
    p = Product.new
    p.category = category
    p.category2 = "homewear"
    p.manager_id = "limjewon"
    p.title = "#{p.category}#{i} apparel"
    p.content = "#{p.category}#{i} content"
    p.image_url = "#{p.category}0#{i}.jpg"
		p.price = i+50
    p.save
  end
end

m = Manager.new
m.managername = "limjewon"
m.password = "limjewon"
m.save
m2 = Manager.new
m2.managername = "asd"
m2.password = "asd"
m2.save
