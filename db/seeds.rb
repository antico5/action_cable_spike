User.destroy_all

10.times { User.create name: Faker::Name.name }

User.all.each do |user|
  User.all.sample(3).each { |u| user.follow u }
end

pry
