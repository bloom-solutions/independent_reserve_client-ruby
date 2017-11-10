module IndependentReserveClient
  class MarketSummary < BaseModel
    attribute :created_timestamp_utc, Time
    attribute :current_highest_bid_price, Float
    attribute :current_lowest_offer_price, Float
    attribute :day_avg_price, Float
    attribute :day_highest_price, Float
    attribute :day_lowest_price, Float
    attribute :day_volume_xbt, Float
    attribute :day_volume_xbt_in_secondary_currency, Float
    attribute :last_price, Float
    attribute :primary_currency_code, String
    attribute :secondary_currency_code, String
  end
end
