require 'rails_helper'

RSpec.feature 'Users/index', type: :feature do
  before(:all) do
    @user1 = User.create(name: 'Albert Tech', photo: 'https://randomuser.me/api/portraits/men/89.jpg',
                         bio: 'Rspec Sample Bio')

    @post1 = Post.create(title: 'Rspec test 1', text: 'rspec test for post', user: @user1)
    @post2 = Post.create(title: 'Rspec test 2', text: 'rspec test for post', user: @user1)
    @post3 = Post.create(title: 'Rspec test 3', text: 'rspec test for post', user: @user1)
    @post4 = Post.create(title: 'Rspec test 4', text: 'rspec test for post', user: @user1)
  end

  describe 'User index page test' do
    it 'Should show the username ' do
      visit users_path
      expect(page).to have_content(@user1.name)
    end

    it 'Should show the profile picture' do
      visit users_path
      expect(page).to have_selector("img[src='#{@user1.photo}']")
    end

    it 'Should the number of posts written by users' do
      visit users_path
      expect(page).to have_content("Number of posts: #{@user1.posts_count}")
    end

    it 'Should redirect me to user show page when I click on the user name' do
      visit users_path
      click_link(@user1.name)
      expect(page).to have_current_path(user_path(@user1))
    end
  end
end
