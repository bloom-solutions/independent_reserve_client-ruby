module IndependentReserveClient
  class GetMarketSummaryResponse < BaseResponse

    attribute :body, Float, lazy: true, default: :default_body

    private

    def default_body
      json = JSON.parse(raw_response.body)
      IndependentReserveClient::MarketSummary.new(
        created_timestamp_utc: Time.parse(json["CreatedTimestampUtc"]),
        current_highest_bid_price: json["CurrentHighestBidPrice"],
        current_lowest_offer_price: json["CurrentLowestOfferPrice"],
        day_avg_price: json["DayAvgPrice"],
        day_highest_price: json["DayHighestPrice"],
        day_lowest_price: json["DayLowestPrice"],
        day_volume_xbt: json["DayVolumeXbt"],
        day_volume_xbt_in_secondary_currency: json["DayVolumeXbtInSecondaryCurrrency"],
        last_price: json["LastPrice"],
        primary_currency_code: json["PrimaryCurrencyCode"],
        secondary_currency_code: json["SecondaryCurrencyCode"]
      )
    end
  end
end
