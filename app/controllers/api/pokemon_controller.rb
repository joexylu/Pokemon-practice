class Api::PokemonController < ApplicationController
    def index
        @pokemons = Pokemon.all
        render :index
    end

    def create
        @pokemon = Pokemon.new(pokemon_params)
        
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render :show
    end

    def pokemon_params
        params.require(:pokemon).permit(:name, :attack, :defense, :poke_type, :move)
    end
end
