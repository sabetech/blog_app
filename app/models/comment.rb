class Comment < ApplicationRecord

  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'

  def self.update_comments_counter(post_id)
    post = Post.find(post_id)
    
    if post.comments_count.nil?
        post.comments_count = 1
    else
        post.comments_count += 1
    end

    post.save
  end

end
