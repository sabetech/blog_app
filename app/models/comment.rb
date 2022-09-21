class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'posts_id'

  after_save :post_comments_counter

  def self.update_comments_counter(post_id)
    post = Post.find(post_id)
    if post.comments_count.nil?
      post.comments_count = 1
    else
      post.comments_count += 1
    end
    post.save
  end
end
