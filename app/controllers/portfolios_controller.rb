class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [ :show, :edit, :update, :destroy]

  def index
    @portfolios = Portfolio.all
  end

  def show

  end

  def new 
    @portfolio = Portfolio.new
  end

  def create
    portfolio_params = params.require(:portfolio).permit(:header, :description, :url, :picture)
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio
    else 
      render :new
    end
  end

  def edit 

  end

  def update

  end

  def destroy

  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:header, :description, :url, :picture)
  end
end