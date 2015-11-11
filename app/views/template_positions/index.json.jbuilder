json.array!(@template_positions) do |template_position|
  json.extract! template_position, :id, :title, :price_item_id, :template_id, :template_item_id, :order
  json.url template_position_url(template_position, format: :json)
end
