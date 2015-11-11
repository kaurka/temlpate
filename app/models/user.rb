class User < ActiveRecord::Base
	has_many :templates
	has_many :proposals
end
