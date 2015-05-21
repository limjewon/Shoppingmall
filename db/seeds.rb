# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["Man","Woman","Accessory"]

categories.each do |category|
  0.upto(10) do |i|
    p = Product.new
    p.manager_id = i+1
    p.category = category
    p.title = "#{category}#{i} apparel"
    p.content = "#{category}#{i} content"
    p.save
  end
end
