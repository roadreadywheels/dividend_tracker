require 'httparty'

namespace :data_refresh do

  desc 'Update the stock price'
  task :update_stock_price => :environment do 
    Stock.all.each do |stock|
      data = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/quote")
      s = Stock.where(:ticker => "#{stock.ticker}").first
      s.update_attributes(:stock_price => data['close']) 
    end
  end

  desc 'Update stock market cap'
  task :update_market_cap => :environment do 
    Stock.all.each do |stock|
      data = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/quote")
      s = Stock.where(:ticker => "#{stock.ticker}").first
      s.update_attributes(:market_cap => data['marketCap']) 
    end
  end

  desc 'Update stock dividend information'
  task :update_market_cap => :environment do 
    Stock.all.each do |stock|
      data = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/quote")
      s = Stock.where(:ticker => "#{stock.ticker}").first
      s.update_attributes(:market_cap => data['marketCap']) 
    end
  end


end