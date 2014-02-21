require 'bitcoinaverage/requester'
require 'json'

module BitcoinAverage
  class Ticker
    include BitcoinAverage::Requester
    attr_accessor :avg_24h, :ask, :bid, :last, :timestamp

    def request_info currency='USD'
      response= sendrequest self.avg_type, currency
      if response.success?
        #Small patch since an attribute can't be named "24h_avg"
        response=JSON.load(response.to_s) unless response.is_a?(Hash)
        self.avg_24h = response["24h_avg"] 
        response.delete("24h_avg")
        #binding.pry
        response.each do |key,value|
          send("#{key}=",value)
        end
        self
      else
        raise "Error receiving response"#<- to be extended
      end
    end
  end
end
