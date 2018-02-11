class News < ApplicationRecord

  belongs_to :stock

  # def self.iex_news_api
  #   @stocks.each do |stock|

  #     news = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/news/last/1")
        


  #   end
  # end

end
