class Temlpate < ActiveRecord::Base
	belongs_to :user
	has_many :proposals
	has_many :template_positions
end
