class Post < ActiveRecord::Base
	
  attr_accessible :body, :category, :cost, :instructions, :key_words, :language, :rating, :style, :title, :word_count
  	has_many :comments
  	belongs_to :user

  	default_scope order('created_at DESC')
end
