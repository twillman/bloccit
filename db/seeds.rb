require 'random_data'

#Create Posts
unique_post = Post.find_or_create_by(
  title:  "Unique Post",
  body:   "This is the unique post."
)
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

#Create Comments
Comment.find_or_create_by(
  post:   unique_post,
  body:   "This is the unique comment."
)
100.times do
  Comment.create!(
    post:   posts.sample,
    body:   RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
