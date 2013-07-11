# This file will detail the models required for Cupidicon

# user.rb - has_many :posts, has_many :comments
	attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar 

# comments - belongs_to posts
	attr_accessible "body"

# post.rb - has_many :comments, belongs_to :user, belongs_to :lexicon
	attr_accessible :body, :category, :cost, :instructions, :key_words, :language, :rating, :style, :title, :word_count


# lexicon.rb -  has_many :posts

