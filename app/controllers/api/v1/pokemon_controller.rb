class Api::V1::PokemonController < ApplicationController
  def index   
    pokemon = PokeFacade.get_a_pokemon(params[:name])
    render json: PokemonSerializer.new(pokemon)
  end
end