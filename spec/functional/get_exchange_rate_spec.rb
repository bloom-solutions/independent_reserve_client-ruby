require "spec_helper"

RSpec.describe "Exchange Rates", vcr: { record: :once } do
  it "returns the exchange rate information from two currencies" do
    client = IndependentReserveClient.new

    response = client.get_exchange_rate("Xbt", "Aud")
    exchange_rate_response = response.body

    expect(exchange_rate_response.rate).to eq 9589.98
  end
end
