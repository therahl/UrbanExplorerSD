# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Review.delete_all
User.delete_all
Business.delete_all


@business1 = Business.create!({name: 'Walmart', address: '123 walmart circle', city: 'Bentonville', state: 'Arkansas', description: 'Low prices, you can get what you need here.', status: ''})
@business2 = Business.create!({name: 'Chunky Burger', address: '333 Bigmouth Ave', city: 'Louisville', state: 'Kentucky', description: 'Extra chunky burgers for the extra chunky in all of us.', status: ''})
@business3 = Business.create!({name: 'Pizza King', address: '123 Sky Pie Place', city: 'Camden', state: 'Arkansas', description: 'Come get a pie. FRESH.', status: ''})


@user1 = User.create!({:email => 'a@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Albert', :family_name => 'Arnold', :city => 'Harris', :state => 'OK'})
@user2 = User.create!({:email => 'b@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Barney', :family_name => 'Buckley', :city => 'Melby', :state => 'OK'})
@user3 = User.create!({:email => 'c@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Charlie', :family_name => 'Cummings', :city => 'Warby', :state => 'OK'})
@user4 = User.create!({:email => 'd@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Dennis', :family_name => 'Dearbourne', :city => 'Garner', :state => 'OK'})
@user5 = User.create!({:email => 'e@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Ebert', :family_name => 'Eisenhower', :city => 'Help', :state => 'OK'})
@user6 = User.create!({:email => 'f@test.com', :password => 'foobarfoobar', :password_confirmation => 'foobarfoobar', :given_name => 'Foo', :family_name => 'Foobared', :city => 'Ipsum', :state => 'OK'})

@business1.reviews.create!({rating: 3, user_id: @user1.id, title: 'SUPER nice', description: 'Wow this place was super nice'})
@business1.reviews.create!({rating: 3, user_id: @user2.id, title: 'Integer tempor', description: 'Maecenas a nibh sit amet neque aliquam eleifend. Integer tempor, ipsum eget posuere ornare, tellus mi congue lacus, quis ornare tellus mi in tellus. Aliquam volutpat nec ante non vestibulum. Sed auctor turpis nec risus blandit, sit amet rutrum nisl posuere.'})
@business1.reviews.create!({rating: 5, user_id: @user3.id, title: 'Wow so good nice', description: 'I cannot believe my eyes Wow this place was super nice'})
@business1.reviews.create!({rating: 3, user_id: @user4.id, title: 'Nulla sed ligula convallis', description: 'Duis at lectus a arcu bibendum scelerisque. Nulla sed ligula convallis, tempus ex gravida, imperdiet massa. Maecenas nibh eros, consequat in nulla quis, consectetur suscipit augue. Etiam id neque in tortor placerat blandit vitae et purus. Fusce eleifend auctor aliquet. Praesent luctus id est rutrum pretium. In ante orci, posuere at bibendum eu, iaculis quis lorem.'})
@business1.reviews.create!({rating: 2, user_id: @user5.id, title: 'SO MUCH GOOD', description: 'I eat it all.'})
@business2.reviews.create!({rating: 5, user_id: @user1.id, title: 'Wow so good nice', description: 'I cannot believe my eyes Wow this place was super nice'})
@business2.reviews.create!({rating: 3, user_id: @user2.id, title: 'Nulla sed ligula convallis', description: 'Duis at lectus a arcu bibendum scelerisque. Nulla sed ligula convallis, tempus ex gravida, imperdiet massa. Maecenas nibh eros, consequat in nulla quis, consectetur suscipit augue. Etiam id neque in tortor placerat blandit vitae et purus. Fusce eleifend auctor aliquet. Praesent luctus id est rutrum pretium. In ante orci, posuere at bibendum eu, iaculis quis lorem.'})
@business2.reviews.create!({rating: 2, user_id: @user3.id, title: 'SO MUCH GOOD', description: 'I eat it all.'})
@business2.reviews.create!({rating: 3, user_id: @user4.id, title: 'SUPER nice', description: 'Wow this place was super nice'})
@business2.reviews.create!({rating: 3, user_id: @user5.id, title: 'Integer tempor', description: 'Maecenas a nibh sit amet neque aliquam eleifend. Integer tempor, ipsum eget posuere ornare, tellus mi congue lacus, quis ornare tellus mi in tellus. Aliquam volutpat nec ante non vestibulum. Sed auctor turpis nec risus blandit, sit amet rutrum nisl posuere.'})
@business3.reviews.create!({rating: 2, user_id: @user1.id, title: 'SO MUCH GOOD', description: 'I eat it all.'})
@business3.reviews.create!({rating: 3, user_id: @user2.id, title: 'SUPER nice', description: 'Wow this place was super nice'})
@business3.reviews.create!({rating: 3, user_id: @user3.id, title: 'Integer tempor', description: 'Maecenas a nibh sit amet neque aliquam eleifend. Integer tempor, ipsum eget posuere ornare, tellus mi congue lacus, quis ornare tellus mi in tellus. Aliquam volutpat nec ante non vestibulum. Sed auctor turpis nec risus blandit, sit amet rutrum nisl posuere.'})
@business3.reviews.create!({rating: 5, user_id: @user4.id, title: 'Wow so good nice', description: 'I cannot believe my eyes Wow this place was super nice'})
@business3.reviews.create!({rating: 3, user_id: @user5.id, title: 'Nulla sed ligula convallis', description: 'Duis at lectus a arcu bibendum scelerisque. Nulla sed ligula convallis, tempus ex gravida, imperdiet massa. Maecenas nibh eros, consequat in nulla quis, consectetur suscipit augue. Etiam id neque in tortor placerat blandit vitae et purus. Fusce eleifend auctor aliquet. Praesent luctus id est rutrum pretium. In ante orci, posuere at bibendum eu, iaculis quis lorem.'})
