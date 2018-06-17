class QuotesController < ApplicationController
  def index
    @quotes = Quote.first(3).reverse
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new
    @quote.body = params[:quote][:body]
    @quote.author = params[:quote][:author]
    @quote.save
    redirect_to '/quotes'
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.body = params[:quote][:body]
    @quote.author = params[:quote][:author]
    @quote.save
    # redirect_to "/quotes/" + params[:id]
    redirect_to quote_path(@quote)

  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to root_path
  end
end
