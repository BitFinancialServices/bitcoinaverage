require 'spec_helper'
require 'bitcoinaverage'

SimpleCov.start
describe BitcoinAverage do
  describe '.global ' do
    before do
      stub_request(:get, "https://api.bitcoinaverage.com/ticker/global/USD").
        to_return(status:200, body: fixture('global_USD.json'),headers:{})
      @response=BitcoinAverage.global
    end
    it 'returns a GlobalTicker object properly filled' do
      #binding.pry
      #expect(BitcoinAverage.global).to be_a BitcoinAverage::GlobalTicker
      expect(@response).to be_a BitcoinAverage::GlobalTicker
      @response.avg_24h.should == 568.44
      @response.ask.should == 566.15
      @response.bid.should == 563.83
      @response.last.should == 564.61
      @response.timestamp.should == 'Fri, 21 Feb 2014 16:22:17 -0000'
      @response.volume_btc.should == 100496.08
      @response.volume_percent.should == 79.49
    end
  end
  describe '.market ' do
    before do
      stub_request(:get, "https://api.bitcoinaverage.com/ticker/USD").
        to_return(status:200, body: fixture('market_USD.json'),headers:{})
      @response=BitcoinAverage.market
    end
    it 'returns a GlobalTicker object properly filled' do
      #binding.pry
      #expect(BitcoinAverage.global).to be_a BitcoinAverage::GlobalTicker
      expect(@response).to be_a BitcoinAverage::MarketTicker
      @response.avg_24h.should == 565.89
      @response.ask.should == 562.54
      @response.bid.should == 559.7
      @response.last.should == 560.54
      @response.timestamp.should == 'Fri, 21 Feb 2014 16:24:27 -0000'
      @response.total_vol.should == 100667.13
    end
  end
  describe 'unknown currency' do
    before do
      stub_request(:get, "https://api.bitcoinaverage.com/ticker/EEE").
        to_return(status:404, body:"", headers:{})
    end
    it 'raises an error' do
      expect{BitcoinAverage.market('EEE')}.to raise_error("EEE is not a known currency")
    end
  end
end
