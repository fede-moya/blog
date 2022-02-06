# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#


User.find_or_create_by(email: "fede@gmail.com").tap do |user|
  WebBlog.find_or_create_by(author: user).tap do |blog|
    Post.find_or_create_by(title: "first blog", web_blog: blog)
  end
end
