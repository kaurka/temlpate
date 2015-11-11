class ProposalPosition < ActiveRecord::Base
	belongs_to :proposal
	belongs_to :template_position
	belongs_to :price_item
end
