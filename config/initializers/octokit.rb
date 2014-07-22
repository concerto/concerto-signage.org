stack = Faraday::Builder.new do |builder|
  builder.use(
    Faraday::HttpCache,
    store: Rails.cache,
    shared_cache: false,
    serializer: Marshal
  )
  builder.use Octokit::Response::RaiseError
  builder.adapter Faraday.default_adapter
end
Octokit.middleware = stack

Octokit.configure do |c|
  c.access_token = '083d481e6f1be26be7cb80c2a3cad8ad5abed68e'
end
