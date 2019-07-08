class DatagovService
  def initialize(query_params)
    @query_params = query_params
  end

  def foods_search
    parse_api_call('/ndb/search', { q: @query_params })
  end

  private

  def parse_api_call(url, params = {})
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.headers['api_key'] = ENV['DATA-GOV-API-KEY']
      f.adapter Faraday.default_adapter
    end
  end
end
