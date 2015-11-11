json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :title, :template_id, :user_id, :link
  json.url proposal_url(proposal, format: :json)
end
