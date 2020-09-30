User.destroy_all
Restaurant.destroy_all
Comment.destroy_all

10.times do |i|

  user = User.create!(email: "test#{i}@test.com", password: '123123', name: Faker::Name.name )

  5.times do
    restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, user: user)

    3.times do
      user_comment = User.create!(email: Faker::Internet.email, password: '123123', name: Faker::Name.name )
      Comment.create!(content: Faker::ChuckNorris.fact, restaurant: restaurant, user: user_comment)
    end
  end

end

