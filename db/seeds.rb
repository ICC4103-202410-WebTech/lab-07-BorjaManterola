# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all

user1 = User.create(
    name: "Borja Manterola",
    email: "borjamanteh@gmail.com",
    password: "meci>cr7"
)
user2 = User.create(
    name: "Clara Leighton",
    email: "clara.leighton@gmail.com",
    password: "siuuuuuu"
)
user3 = User.create(
    name: "Tomas Labbe",
    email: "tlabbe@miuandes.cl",
    password: "borjajuegos"
)
user4 = User.create(
    name: "Santiago Martinez",
    email: "santiagomaf1221@gmail.com",
    password: "kkkkkkk"
)
user5 = User.create(
    name: "John Doe",
    email: "johndoe@gmiail.com",
    password: "jjjjjjjj"
)

Post.delete_all

post1 = Post.create(
    title: "Miami",
    content: "My vacation in Miami was cool",
    user_id: user3.id,
    published_at: DateTime.new(2022, 12, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 8,
    likes_count: 265,
)
post2 = Post.create(
    title: "Post 1",
    content: "My vacation in Rio de Janeiro was cool",
    user_id: user2.id,
    published_at: DateTime.new(2022, 5, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 16,
    likes_count: 861,
)
post3 = Post.create(
    title: "Costa Rica",
    content: "My vacation in Costa Rica was cool",
    user_id: user1.id,
    published_at: DateTime.new(2022, 1, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 26,
    likes_count: 2671,
)
post4 = Post.create(
    title: "Japan",
    content: "My vacation in Japan was cool",
    user_id: user5.id,
    published_at: DateTime.new(2022, 1, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 11,
    likes_count: 19,
)
post5 = Post.create(
    title: "Scotland",
    content: "My vacation in Scotland was cool",
    user_id: user4.id,
    published_at: DateTime.new(2022, 1, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 15,
    likes_count: 195,
)
post6 = Post.create(
    title: "Argentina",
    content: "My vacation in Argentina was cool",
    user_id: user5.id,
    published_at: DateTime.new(2022, 8, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 17,
    likes_count: 17,
)
post7 = Post.create(
    title: "Machu Picchu",
    content: "My vacation in Machu Picchu was cool",
    user_id: user1.id,
    published_at: DateTime.new(2022, 3, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 87,
    likes_count: 5329,
)
post8 = Post.create(
    title: "New York",
    content: "My vacation in New York was cool",
    user_id: user2.id,
    published_at: DateTime.new(2022, 11, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 69,
    likes_count: 17,
)
post9 = Post.create(
    title: "Wano",
    content: "My vacation in Wano, searching the one piece, was cool",
    user_id: user3.id,
    published_at: DateTime.new(2022, 2, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 999,
    likes_count: 1633478,
)
post10 = Post.create(
    title: "Zou",
    content: "My vacation in Zou was cool",
    user_id: user4.id,
    published_at: DateTime.new(2022, 9, 25, 10, 30, 0), # DateTime.new(year, month, day, hour, minute, second)
    answers_count: 19,
    likes_count: 154,
)

Tag.delete_all

tag1 = Tag.create(
    name: "fantastictrip"
)
tag2 = Tag.create(
    name: "beachtrip"
)
tag3 = Tag.create(
    name: "citytrip"
)
tag4 = Tag.create(
    name: "Tag 1"
)
tag5 = Tag.create(
    name: "greatexperience"
)

post1.tags << tag2
post1.tags << tag5

post2.tags << tag2
post2.tags << tag3
post2.tags << tag4
post2.tags << tag5

post3.tags << tag2
post3.tags << tag4
post3.tags << tag5

post4.tags << tag3
post4.tags << tag4
post4.tags << tag5

post5.tags << tag4
post5.tags << tag5

post6.tags << tag2
post6.tags << tag3
post6.tags << tag4
post6.tags << tag5

post7.tags << tag1
post7.tags << tag4
post7.tags << tag5

post8.tags << tag3
post8.tags << tag5

post9.tags << tag1
post9.tags << tag2
post9.tags << tag3
post9.tags << tag4
post9.tags << tag5

post10.tags << tag1
post10.tags << tag4
post10.tags << tag5