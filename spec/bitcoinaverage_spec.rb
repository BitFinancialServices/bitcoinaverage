require 'bitcoinaverage'
require 'spec_helper'

describe BitcoinAverage do
  describe 'external request' do
    it 'queries FactoryGirl contributors on Github' do
      uri = URI('https://api.github.com/repos/thoughtbot/factory_girl/contributors')

      response = Net::HTTP.get(uri)

      expect(response).to be_an_instance_of(String)
    end
  end
end
#describe MtGox do
#  describe '.new' do
#    it 'returns a MtGox::Client' do
#      expect(MtGox.new).to be_a MtGox::Client
#    end
#  end
#
#  describe '.configure' do
#    it 'sets key and secret' do
#      MtGox.configure do |config|
#        config.key = 'key'
#        config.secret = 'secret'
#      end
#
#      expect(MtGox.key).to eq 'key'
#      expect(MtGox.secret).to eq 'secret'
#    end
#
#    it 'allows setting nonce type' do
#      expect(MtGox.nonce_type).to eq(:nonce)
#      MtGox.configure do |config|
#        config.nonce_type = :tonce
#      end
#      expect(MtGox.nonce_type).to eq(:tonce)
#    end
#  end
#
#end
