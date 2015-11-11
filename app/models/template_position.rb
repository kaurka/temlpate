class TemplatePosition < ActiveRecord::Base
	belongs_to :price_item
	belongs_to :template
	has_many :proposal_positions
	has_and_belongs_to_many :price_items
end
