require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(text: 'hello man') }

  before { subject.save }

  it 'Post comments counter can be set' do
    subject.post = Post.new(title: 'Post One', text: 'This is the post one')
    subject.send(:post_comments_counter)

    expect(subject.post.comments_count).to be(1)
  end

  it 'comments should be not be Valid' do
    subject.text = nil
    expect(subject).to_not be_valid
  end
end
