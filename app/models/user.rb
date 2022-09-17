class User < ApplicationRecord
  has_many :posts, foreign_key: 'user_id'
  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'

  def self.three_most_posts(user_id)
    Post.where(user_id: user_id).order(created_at: :desc).limit(3).all
  end
end
