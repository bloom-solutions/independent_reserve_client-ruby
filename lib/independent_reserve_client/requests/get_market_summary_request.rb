module IndependentReserveClient
  class GetMarketSummaryRequest < BaseRequest

    attribute :primary_currency, String
    attribute :secondary_currency, String

    private

    def path
      "/Public/GetMarketSummary"
    end

    def params
      { 
        "primaryCurrencyCode" => primary_currency,
        "secondaryCurrencyCode" => secondary_currency
      }
    end
  end
end
