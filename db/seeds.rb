User.destroy_all

100.times { User.create name: Faker::Name.name }

User.all.each do |user|
  10.times { user.tweets.create text: Faker::Hipster.sentence }
  User.all.sample(10).each { |u| user.follow u }
end

pry
