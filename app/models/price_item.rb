class PriceItem < ActiveRecord::Base
	has_many :proposal_positions
	has_many :template_positions
	has_and_belongs_to_many :template_positions
end
