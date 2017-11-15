module IndependentReserveClient
  class ExchangeRate < BaseModel
    attribute :rate, Float
    attribute :timestamp, Time
  end
end
