require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @user_test = User.create(name: 'Tom Test', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                             bio: 'Test Bio.', posts_count: 0)
    @user_test.save

    @post = Post.create(user_id: @user_test.id, title: 'Hello', text: 'This is my first post', comments_count: 0,
                        likes_count: 0)
    @post.save

    @like = Like.create(post_id: @post.id, user_id: @user_test.id)
    @like.save
  end
  context 'validations::' do
    it 'validate update_likes_counter method' do
      Like.update_likes_counter(@post.id)
      expect(@post.likes_count).to be > 0
    end

    it 'Must belong to a user' do
      @like.user_id = nil
      expect(@like).to_not be_valid
    end

    it 'Must belong to a post' do
      @like.posts_id = nil
      expect(@like).to_not be_valid
    end
  end
end
