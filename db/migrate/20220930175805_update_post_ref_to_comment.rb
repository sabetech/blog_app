class UpdatePostRefToComment < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :post, foreign_key: true
    add_reference :comments, :post, foreign_key: true
  end
end
