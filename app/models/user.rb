class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable
  has_many :posts, foreign_key: 'user_id'
  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'

  validates :name, presence: true
  validates :posts_count, numericality: { only_integer: true }
  validates :posts_count, comparison: { greater_than_or_equal_to: 0 }

  def three_most_latest_posts
    posts.includes(:user).last(3)
  end

  def all_posts
    posts.order(created_at: :desc)
  end
end
