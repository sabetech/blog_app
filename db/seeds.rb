# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# student = Student.create(
#   firstname:'Ravi',
#   lastname:'Singh',
#   email:'ravi@bootcamp.com'
# )




Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

bio = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit voluptates vitae similique modi nisi, commodi perferendis, id assumenda dolorem eaque tenetur suscipit! Tempora voluptatum vel sapiente eligendi qui, ipsum incidunt ex earum, debitis sed, harum esse! Officiis similique amet rerum! Molestiae quibusdam, perspiciatis dolore, aliquid minus dolores atque quia repudiandae nobis praesentium eum eius, earum necessitatibus voluptas doloremque iste ipsam dolorem dicta natus culpa. Iste sint quae non debitis ex."

# User seeds
first_user = User.create(name: 'Billy', email: 'billy01@gmail.com', password: '@password123AB', photo: 'https://randomuser.me/api/portraits/men/50.jpg', bio: 'Teacher from Holand.')
second_user = User.create(name: 'Lilly', email: 'lilly01@gmail.com', password: '@password123AB', photo: 'https://randomuser.me/api/portraits/women/89.jpg', bio: 'Teacher from Poland.')
third_user = User.create(name: 'Craig', email: 'craig61@gmail.com', password: '@password123AB', photo: 'https://randomuser.me/api/portraits/women/21.jpg', bio: 'Teacher from Abfoa.')

p "Created #{User.count} Users"

# Post seeds
post_1 = Post.create(user: first_user, title: 'Post One', text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_2 = Post.create(user: first_user, title: 'Post Two', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_3 = Post.create(user: first_user, title: 'Post Three', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_4 = Post.create(user: first_user, title: 'Post Four', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_5 = Post.create(user: second_user, title: 'Post Five', text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_6 = Post.create(user: second_user, title: 'Post Six', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_7 = Post.create(user: third_user, title: 'Post Seven', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')
post_8 = Post.create(user: third_user, title: 'Post Eight', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!')

p "Created #{Post.count} Posts"

# Comment seeds
Comment.create([
                 { post: post_1, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, user: second_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, user: first_user, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

               ])

p "Created #{Comment.count} Comments"

# Like seeds
Like.create([
  { post: post_1, user: second_user },
  { post: post_2, user: second_user },
  { post: post_3, user: second_user },
  { post: post_4, user: second_user },
  { post: post_5, user: first_user },
  { post: post_6, user: first_user },
  { post: post_7, user: first_user },
  { post: post_8, user: first_user },
])

p "Created #{Like.count} Likes"
