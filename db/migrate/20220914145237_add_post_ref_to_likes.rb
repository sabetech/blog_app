# frozen_string_literal: true

# Add post reference to likes
class AddPostRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :post, null: false, foreign_key: true
  end
end
