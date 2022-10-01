class Post < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :comments, foreign_key: 'post_id', dependent: :delete_all
  has_many :likes, foreign_key: 'post_id', dependent: :delete_all

  after_save :post_counter

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_count, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :likes_count, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

  def post_counter
    user.increment!(:posts_count)
  end

  def five_recent_comments
    comments.includes(:user).order(created_at: :desc).limit(5)
  end
end
