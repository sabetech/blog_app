require 'rails_helper'

# Enable Metrics/BlockLength: Block has too many lines.
RSpec.feature 'Posts/index', type: :feature do
  before(:all) do
    @user1 = User.create(name: 'Albert Tech', photo: 'https://randomuser.me/api/portraits/men/89.jpg',
                         bio: 'Rspec Sample Bio')
    @post1 = Post.create(title: 'Rspec test 1', text: 'rspec test for post', user: @user1)
    @post2 = Post.create(title: 'Rspec test 2', text: 'rspec test for post', user: @user1)
    @post3 = Post.create(title: 'Rspec test 3', text: 'rspec test for post', user: @user1)
    @post4 = Post.create(title: 'Rspec test 4', text: 'rspec test for post', user: @user1)
  end
  describe 'User Post Index page' do
    it 'Should show the profile picture' do
      visit user_posts_path(@user1)
      expect(page).to have_selector("img[src='#{@user1.photo}']")
    end

    it 'Should show the username ' do
      visit user_posts_path(@user1)
      expect(page).to have_content(@user1.name)
    end

    it 'Should show the Number of posts' do
      visit user_posts_path(@user1)
      expect(page).to have_text("Number of posts: #{@user1.posts_count}")
    end

    it 'Should show the posts title' do
      visit user_posts_path(@user1)
      expect(page).to have_content(@post1.title)
      expect(page).to have_content(@post2.title)
      expect(page).to have_content(@post3.title)
      expect(page).to have_content(@post4.title)
    end

    it 'Should show some of the posts text' do
      visit user_posts_path(@user1)
      expect(page).to have_content(@post1.text[0..20])
      expect(page).to have_content(@post2.text[0..20])
      expect(page).to have_content(@post3.text[0..20])
      expect(page).to have_content(@post4.text[0..20])
    end

    it 'Should show the first comment on a post' do
      @comment = Comment.create(text: 'Rspec test for comment', user: @user1, post: @post4)
      visit user_posts_path(@user1)
      expect(page).to have_content(@comment.text)
    end

    it 'Should show the number of comments on a post' do
      visit user_posts_path(@user1)
      expect(page).to have_content(@post4.comments_count)
    end

    it 'Should show the number of likes on a post' do
      visit user_posts_path(@user1)
      expect(page).to have_content(@post4.likes_count)
    end

    it 'Should show a section for pagination' do
      visit user_posts_path(@user1)
      expect(page).to have_selector('.pagination')
    end

    it 'Should redirect me to the post show page when I click on the post title' do
      visit user_posts_path(@user1)
      click_link(@post1.title)
      expect(page).to have_current_path(user_post_path(@user1, @post1))
    end
  end
end
# Disable Metrics/BlockLength: Block has too many lines.