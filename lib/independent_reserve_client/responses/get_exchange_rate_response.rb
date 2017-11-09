module IndependentReserveClient
  class GetExchangeRateResponse < BaseResponse

    attribute :body, Float, lazy: true, default: :default_body

    private

    def default_body
      json = JSON.parse(raw_response.body)
      IndependentReserveClient::ExchangeRate.new(
        rate: json["LastPrice"],
        timestamp: Time.parse(json["CreatedTimestampUtc"])
      )
    end
  end
end
