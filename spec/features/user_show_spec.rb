require 'rails_helper'

RSpec.feature 'User/show', type: :feature do
    before(:all) do
        @user1 = User.create(name: 'Albert Tech', photo: 'https://randomuser.me/api/portraits/men/89.jpg',
                                  bio: 'Rspec Sample Bio')
        
        @post1 = Post.create(title: 'Rspec test 1', text: 'rspec test for post', user: @user1)
        @post2 = Post.create(title: 'Rspec test 2', text: 'rspec test for post', user: @user1)
        @post3 = Post.create(title: 'Rspec test 3', text: 'rspec test for post', user: @user1)
        @post4 = Post.create(title: 'Rspec test 4', text: 'rspec test for post', user: @user1)
    end

    describe 'User show page test' do

        it 'Should show the user\'s profile picture.' do
            visit user_path(@user1)
            expect(page).to have_selector("img[src='#{@user1.photo}']")
        end

        it 'Should show the user\'s username' do 
            visit user_path(@user1)
            expect(page).to have_content(@user1.name)
        end

        it 'Should show the posts of the user' do
            visit user_posts_path(@user1)
            expect(page).to have_content(@post1.title)
            expect(page).to have_content(@post2.title)
            expect(page).to have_content(@post3.title)
            expect(page).to have_content(@post4.title)
        end

        it 'Should show the user\'s bio' do
            visit user_path(@user1)
            expect(page).to have_content(@user1.bio)
        end

        it 'Should show the user\'s last 3 posts' do
            visit user_path(@user1)
            expect(page).to have_content(@post2.title)
            expect(page).to have_content(@post3.title)
            expect(page).to have_content(@post4.title)
        end

        it 'Should show a button that views user\'s posts' do
            visit user_path(@user1)
            expect(page).to have_link('See all posts')
        end

        it 'Should redirect me to post\'s show page when I click on user\s post' do
            visit user_path(@user1)
            click_on @post4.title
            expect(page).to have_current_path(user_post_path(@user1, @post4))
        end

        it 'Should redirect me to user\'s posts page when I click on the button' do
            visit user_path(@user1)
            click_on 'See all posts'
            expect(page).to have_current_path(user_posts_path(@user1))
        end
    end
end