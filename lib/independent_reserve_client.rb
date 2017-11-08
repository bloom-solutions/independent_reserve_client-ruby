require "api_client_base"
require "typhoeus"

require "independent_reserve_client/version"
require "independent_reserve_client/client"

module IndependentReserveClient
  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String, default: "https://api.independentreserve.com"
  end
end
