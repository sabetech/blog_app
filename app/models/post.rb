class Post < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :comments, foreign_key: 'posts_id'
  has_many :likes, foreign_key: 'posts_id'
  
  after_save :update_post_counter


  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_count, numericality: { only_integer: true }
  validates :comments_count, comparison: { greater_than_or_equal_to: 0 }
  validates :comments_count, numericality: { only_integer: true }
  validates :comments_count, comparison: { greater_than_or_equal_to: 0 }

  def post_counter
    user.increment!(:posts_count)
  end

  def self.five_recent_comments(user_id, posts_id)
    Comment.where(user_id: user_id, posts_id: posts_id).order(created_at: :desc).limit(5).all
  end
end
