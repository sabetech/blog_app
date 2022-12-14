require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'hello man') }

  before { subject.save }

  it 'Posts should be not be Valid' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'User post counter to increment' do
    subject.user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                            bio: 'Teacher from Mexico.')
    subject.send(:update_post_counter)
    expect(subject.user.posts_count).to be(1)
  end
  it 'Likes Counter attribute should be greater or equal to zero' do
    subject.likes_count = -4
    expect(subject).to_not be_valid
  end
  it 'Title attribute should be less than 250 charachter' do
    subject.title = 'Sample Test title'
    expect(subject).to_not be_valid
  end

  it 'Comments Counter attribute should be an integer number' do
    subject.comments_count = 'some random string'
    expect(subject).to_not be_valid
  end
  it 'five_last_comments method should return the last five comments' do
    post = described_class.create(title: 'Post One', text: 'This is the post one')
    author = User.first

    post.comments = [
      Comment.new({ user: author, text: 'This is the comment one' }),
      Comment.new({ user: author, text: 'This is the comment two' }),
      Comment.new({ user: author, text: 'This is the comment three' }),
      Comment.new({ user: author, text: 'This is the comment four' }),
      Comment.new({ user: author, text: 'This is the comment five' }),
      Comment.new({ user: author, text: 'This is the comment six' })
    ]

    expect(post.five_recent_comments.size).to be(5)
    #   expect(post.five_last_comments.pluck(:id)).to match_array(post.comments.last(5).pluck(:id))
  end
end
