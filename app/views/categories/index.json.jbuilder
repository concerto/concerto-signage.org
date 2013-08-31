json.array!(@categories) do |category|
  json.extract! category, :name, :language, :is_help_category, :description
  json.url category_url(category, format: :json)
end