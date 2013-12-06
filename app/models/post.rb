class Post < ActiveRecord::Base
	validates :titulo, presence: true
end
