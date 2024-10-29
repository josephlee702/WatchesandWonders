require "faraday"
require "json"

class WatchApiClient
  #Base URL for the API
  BASE_URL = "https://api.thewatchapi.com"

  def initialize
    # require 'pry'; binding.pry
    @connection = Faraday.new(url: BASE_URL) do |conn|
      conn.request :json
      conn.response :json, parser_options: { symbolize_names: true }
      conn.headers['Authorization'] = "Bearer #{Rails.application.credentials.watchapi[:api_key]}"
      conn.adapter Faraday.default_adapter
    end
  end

  # GET request to fetch watch data
  def fetch_watches
    response = @connection.get("/v1/model/list") # Adjust endpoint as needed
    handle_response(response)
  end

  private

  def handle_response(response)
    if response.success?
      response.body
    else
      { error: response.status, message: response.body }
    end
  end
end
