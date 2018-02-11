require 'httparty'

class NewsController < ApplicationController

  include HTTParty

  def index
    @stocks = Stock.all

    @stocks.each do |stock|
      @news = HTTParty.get("https://api.iextrading.com/1.0/stock/#{stock.ticker}/news/last/5")
    end
  end


end
