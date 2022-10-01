class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post, class_name: 'Post', foreign_key: 'post_id'

  after_save :post_comments_counter
  after_destroy :comment_decrement

  def post_comments_counter
    post.increment!(:comments_count)
  end

  def comment_decrement
    post.decrement!(:comments_count)
  end
end
