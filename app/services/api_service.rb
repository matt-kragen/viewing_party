class ApiService
  def get_data(endpoint)
    Faraday.new(endpoint)
  end

  def get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
