require "api_client_base"
require "typhoeus"

require "independent_reserve_client/version"

module IndependentReserveClient
  include APIClient::Base.module

  with_configuration do
    has :host, classes: String, default: "https://api.independentreserve.com"
  end
end
