class Proposal < ActiveRecord::Base
	belongs_to :user
	belongs_to :template
	has_many :proposal_positions
end
