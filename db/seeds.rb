# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Home page
firstPost = Post.first
if firstPost.nil?
	post = Post.new
	post.url = "/"
	post.text = ""
	post.save
end

# Contacts
  # TODO: Should be another page
contacts = Post.find_by(id: 2)
if contacts.nil?
	post = Post.new
	post.url = "/contacts"
	post.text = ""
	post.save
end