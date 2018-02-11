require 'httparty'
class IexApi < ApplicationRecord

  include HTTParty
  
  def self.stock_update()
    @stocks = Stock.all

    @stocks.each do |stock|
      data = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/quote")
      s = Stock.where(:ticker => "#{stock.ticker}").first
      s.update_attributes(:market_cap => data['marketCap'], :stock_price => data['close']) 
    end
  end

end
