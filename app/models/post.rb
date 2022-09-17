class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'posts_id'
  has_many :likes, foreign_key: 'posts_id'

  def self.post_counter(user_id)
    user = User.find(user_id)
    if user.posts_count.nil?
      user.posts_count = 1
    else
      user.posts_count += 1
    end

    user.save
  end

  def self.five_recent_comments(user_id, posts_id)
    Comment.where(user_id: user_id, posts_id: posts_id).order(created_at: :desc).limit(5).all
  end
end
