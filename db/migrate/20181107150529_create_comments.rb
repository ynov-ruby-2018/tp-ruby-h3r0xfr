class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.integer :likes
      t.integer :dislikes
      t.integer :user_id
      t.timestamps
    end
  end
end