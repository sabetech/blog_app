class Like < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :user, class_name: 'User'

  def self.update_likes_counter(post_id)
    post = Post.find(post_id)
    if post.likes_count.nil?
      post.likes_count = 1
    else
      post.likes_count += 1
    end

    post.save
  end
end
