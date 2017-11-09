module IndependentReserveClient
  class GetExchangeRateRequest < BaseRequest

    attribute :primary_currency, String
    attribute :secondary_currency, String

    private

    def path
      # url should be /PublicGetMarketSummary?
      # change it to /PublicGetMarketSummary=
      # because path is not recognized
      # replace it back in the default_uri method below

      "/Public/GetMarketSummary=primaryCurrencyCode=:primary_currency" +
        "&secondaryCurrencyCode=:secondary_currency"
    end

    def default_uri
      uri = URI(host)
      uri.path = api_client_base_path
      validate_url_path(uri)
    end

    def validate_url_path(uri)
      uri_array = uri.to_s.split("=", 2)
      uri_array[0] + "?" + uri_array[1]
    end
  end
end
