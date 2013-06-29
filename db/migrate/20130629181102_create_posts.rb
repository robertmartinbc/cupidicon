class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.integer :word_count
      t.string :language
      t.string :rating
      t.text :key_words
      t.integer :cost
      t.string :style
      t.text :instructions

      t.timestamps
    end
  end
end
