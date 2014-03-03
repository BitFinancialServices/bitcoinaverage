require 'spec_helper'
require 'bitcoinaverage'

SimpleCov.start
describe BitcoinAverage do
  describe '.global ' do
    before do
      stub_request(:get, 'https://api.bitcoinaverage.com/ticker/global/USD').
        to_return(:status => 200, :body => fixture('global_USD.json'), :headers => {})
      @response = BitcoinAverage.global
    end
    it 'returns a GlobalTicker object properly filled' do
      # binding.pry
      # expect(BitcoinAverage.global).to be_a BitcoinAverage::GlobalTicker
      expect(@response).to be_a BitcoinAverage::GlobalTicker
      expect(@response.avg_24h).to eq(568.44)
      expect(@response.ask).to eq(566.15)
      expect(@response.bid).to eq(563.83)
      expect(@response.last).to eq(564.61)
      expect(@response.timestamp).to eq('Fri, 21 Feb 2014 16:22:17 -0000')
      expect(@response.volume_btc).to eq(100496.08)
      expect(@response.volume_percent).to eq(79.49)
    end
  end
  describe '.market ' do
    before do
      stub_request(:get, 'https://api.bitcoinaverage.com/ticker/USD').
        to_return(:status => 200, :body => fixture('market_USD.json'), :headers => {})
      @response = BitcoinAverage.market
    end
    it 'returns a GlobalTicker object properly filled' do
      # binding.pry
      # expect(BitcoinAverage.global).to be_a BitcoinAverage::GlobalTicker
      expect(@response).to be_a BitcoinAverage::MarketTicker
      expect(@response.avg_24h).to eq(565.89)
      expect(@response.ask).to eq(562.54)
      expect(@response.bid).to eq(559.7)
      expect(@response.last).to eq(560.54)
      expect(@response.timestamp).to eq('Fri, 21 Feb 2014 16:24:27 -0000')
      expect(@response.total_vol).to eq(100667.13)
    end
  end
  describe 'unknown currency' do
    before do
      stub_request(:get, 'https://api.bitcoinaverage.com/ticker/EEE').
        to_return(:status => 404, :body => '', :headers => {})
    end
    it 'raises an error' do
      expect { BitcoinAverage.market('EEE') }.to raise_error('EEE is not a known currency')
    end
  end
end
