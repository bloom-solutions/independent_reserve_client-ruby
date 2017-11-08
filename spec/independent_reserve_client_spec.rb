require 'spec_helper'

RSpec.describe IndependentReserveClient do
  it 'has a version number' do
    expect(IndependentReserveClient::VERSION).not_to be nil
  end

  it "has default host of api.independentreserve.com" do
    config = described_class.configuration
    expect(config.host).to eq "https://api.independentreserve.com"
  end
end

