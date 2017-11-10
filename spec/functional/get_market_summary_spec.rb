require "spec_helper"

RSpec.describe "Get Market Summary", vcr: { record: :once } do
  it "returns a current snapshot of the IR market for a given currency pair" do
    client = IndependentReserveClient.new

    response = client.get_market_summary("Xbt", "Aud")
    market_summary_response = response.body

    expect(market_summary_response.day_highest_price).to eq 9788
    expect(market_summary_response.day_lowest_price).to eq 8720
    expect(market_summary_response.day_avg_price).to eq 9355.03
    expect(market_summary_response.day_volume_xbt).to eq 430.23287892
    expect(market_summary_response.day_volume_xbt_in_secondary_currency).to eq 429.63801004
    expect(market_summary_response.current_lowest_offer_price).to eq 9705.0
    expect(market_summary_response.current_highest_bid_price).to eq 9650.0
    expect(market_summary_response.last_price).to eq 9705.0
    expect(market_summary_response.primary_currency_code).to eq "Xbt"
    expect(market_summary_response.secondary_currency_code).to eq "Aud"
    expect(market_summary_response.created_timestamp_utc.class).to eq Time
  end
end
