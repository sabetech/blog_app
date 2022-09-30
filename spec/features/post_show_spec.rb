require 'rails_helper'

RSpec.feature 'Posts/index', type: :feature do
  before(:all) do
    @user1 = User.create(name: 'Albert Tech', photo: 'https://randomuser.me/api/portraits/men/89.jpg',
        bio: 'Rspec Sample Bio')
    @post1 = Post.create(title: 'Rspec test 1', text: 'rspec test for post', user: @user1)
    @post2 = Post.create(title: 'Rspec test 2', text: 'rspec test for post', user: @user1)
    @post3 = Post.create(title: 'Rspec test 3', text: 'rspec test for post', user: @user1)
    @post4 = Post.create(title: 'Rspec test 4', text: 'rspec test for post', user: @user1)
  end
  
  describe 'User Post Show page' do
    it 'Should show the post title' do
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@post1.title)
    end

    it 'Should show the author of the post' do
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@user1.name)
    end

    it 'Should show the number of comments the post has' do
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@post1.comments_count)
    end

    it 'Should show the number of likes the post has' do
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@post1.likes_count)
    end

    it 'Should show the post text' do
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@post1.text)
    end

    it 'Should show the user name of each commenters' do
        @comment = Comment.create(text: 'Rspec test for comment', user: @user1, post: @post1)
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@comment.user.name)
    end

    it 'Should show the text of each comment' do
        @comment = Comment.create(text: 'Rspec test for comment', user: @user1, post: @post1)
        visit user_post_path(@user1, @post1)
        expect(page).to have_content(@comment.text)
    end
  end
end