class User < ActiveRecord::Base
	has_many :posts
	has_many :followers, through: :follow
end
#========================
class Post < ActiveRecord::Base
	belongs_to 	:user
	has_many 		:comments
end
#========================

