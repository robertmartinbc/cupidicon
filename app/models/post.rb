class Post < ActiveRecord::Base
	
  attr_accessible :body, :category, :cost, :instructions, :key_words, :language, :rating, :style, :title, :word_count
  	has_many :comments
  	belongs_to :user

  	default_scope order('created_at DESC')

  	validates :title, length: { minimum: 5 }, presence: true
  	validates :body, length: { minimum: 20 }, presence: true
  	validates :category, presence: true
  	validates :word_count, presence: true
  	validates :language, presence: true
  	validates :rating, presence: true
  	validates :key_words, presence: true
  	validates :cost, presence: true
  	validates :style, presence: true
  	validates :instructions, presence: true
end
