json.array!(@proposal_positions) do |proposal_position|
  json.extract! proposal_position, :id, :proposal_id, :price_item_id, :template_position_id, :price, :change_marker
  json.url proposal_position_url(proposal_position, format: :json)
end
