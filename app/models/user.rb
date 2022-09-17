class User < ApplicationRecord
  has_many :posts, foreign_key: 'user_id'
  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'

  validates :name, presence: true
  validates :posts_count, numericality: { only_integer: true }
  validates :posts_count, comparison: { greater_than_or_equal_to: 0 }

  def self.three_most_posts(user_id)
    Post.where(user_id: user_id).order(created_at: :desc).limit(3).all
  end
end
