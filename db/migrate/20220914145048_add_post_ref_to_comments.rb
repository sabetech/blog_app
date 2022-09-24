# frozen_string_literal: true

# Add post_id as foreign key to Comments
class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :posts, null: false, foreign_key: true
  end
end
