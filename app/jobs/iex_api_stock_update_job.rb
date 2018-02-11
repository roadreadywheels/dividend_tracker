class IexApiStockUpdateJob < ApplicationJob
  queue_as :default

  # def perform(stocks)
  #   stocks.each do |stock|
  #     IexApiStockUpdateJob.stock_update(stock)
  #   end
  # end
end
