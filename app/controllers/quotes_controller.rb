class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
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
  end

  def update
  end

  def destroy
  end
end
