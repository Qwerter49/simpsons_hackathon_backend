class CharactersController < ApplicationController

    def index 
        @characters = Character.all 
        render json: @characters, include: :quotes
    end

    def show 
        @character = Character.find(params[:id])
        render json: @character, include: :quotes
    end

end
