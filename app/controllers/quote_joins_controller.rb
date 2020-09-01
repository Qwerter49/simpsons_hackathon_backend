class QuoteJoinsController < ApplicationController
    def index 
        @quotejoins = QuoteJoin.all 
        render json: @quotejoins
    end

    def show 
        @quotejoin = QuoteJoin.find(params[:id])
        render json: @quotejoin
    end
end
