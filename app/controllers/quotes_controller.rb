class QuotesController < ApplicationController
    def index 
        @quotes = Quote.all 
        render json: @quotes, include: :character
    end

    def show 
        @quote = Quote.find(params[:id])
        render json: @quote, include: :character
    end
end
