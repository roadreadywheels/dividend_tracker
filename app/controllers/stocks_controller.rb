class StocksController < ApplicationController

  attr_accessor :m, :news
  before_action :require_login
  before_action :set_month, :only => [:show]
  before_action :get_news, :only => [:show]


  def index
    @stocks = @account.stocks.sorted
  end

  def show
    @stock = Stock.find(params[:id])
    # Stock.iex_api
    # Stock.iex_api_dividend
    @date = Date.today
    @date = @date.strftime("%B")

  end

  def new
    @stock = Stock.new
    @date = Date.today
    @date = @date.strftime("%B")
  end

  def create
     @stock = Stock.new(stock_params)
    if @stock.save
      flash[:notice] = "Congratulations you have just added #{@stock.ticker}."
      redirect_to(root_path)
    else
      render('new')
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])

    if @stock.update_attributes(stock_params)
      flash[:notice] = "Congratulations! You have sucessfully made an update."
      redirect_to(root_path)
    else
      render('edit')
    end
  end

  def delete
    @stock = Stock.find(params[:id])
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    flash[:notice] = "See ya."
    redirect_to(root_path)
  end

  def import
    Stock.import(params[:file])
    redirect_to root_url, notice: "Data sucessfully imported!"
  end

  def bulk_upload
  end


  private

  def stock_params
     params.require(:stock).permit(:ticker, :dividend_yield, :shares,
                                   :dividend_type, :ex_date, :income,
                                   :company_details, :company_name, :eps,
                                   :stock_price, :pe, :market_cap, :enterprise_value,
                                   :account_id)
  end

  def search_params
    params.require(:ticker).permit(:stock, :account_id)
  end

  def set_month
    @stocks = Stock.all
    @accounts = Account.all
    @date = Date.today
    month = @date.strftime("%B").downcase


    @m = "#{month}_income"
  end

  def get_news
    @stock = Stock.find(params[:id])
    @news = HTTParty.get("https://api.iextrading.com/1.0/stock/#{@stock.ticker}/news/last/1")
  end


end
