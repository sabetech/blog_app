class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  after_save :post_comments_counter

  def post_comments_counter
    post.increment!(:comments_count)
  end
end
