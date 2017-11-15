require "api_client_base"
require "typhoeus"

require "independent_reserve_client/version"
require "independent_reserve_client/client"
require "independent_reserve_client/models/base_model"
require "independent_reserve_client/models/exchange_rate"
require "independent_reserve_client/models/market_summary"
require "independent_reserve_client/requests/base_request"
require "independent_reserve_client/requests/get_exchange_rate_request"
require "independent_reserve_client/requests/get_market_summary_request"
require "independent_reserve_client/responses/base_response"
require "independent_reserve_client/responses/get_exchange_rate_response"
require "independent_reserve_client/responses/get_market_summary_response"

module IndependentReserveClient
  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String, default: "https://api.independentreserve.com"
  end
end
