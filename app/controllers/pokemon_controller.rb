class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    @pokemon = PokeFacade.get_a_pokemon(pokemon)
  end
end