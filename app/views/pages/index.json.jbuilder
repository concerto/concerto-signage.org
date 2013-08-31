json.array!(@pages) do |page|
  json.extract! page, :category_id, :language, :is_help_page, :title, :summary, :body
  json.url page_url(page, format: :json)
end
