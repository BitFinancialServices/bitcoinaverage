require 'bitcoinaverage/requester'

module BitcoinAverage
  class Ticker
    include BitcoinAverage::Requester
    attr_accessor :avg_24h, :ask, :bid, :last, :timestamp

    def request_info currency='USD'
      response= sendrequest self.avg_type
      #Small patch since an attribute can't be named "24h_avg"
      self.avg_24h = response["24h_avg"] 
      response.delete("24h_avg")
      response.each do |key,value|
        send("#{key}=",value)
      end
    end
  end
end
