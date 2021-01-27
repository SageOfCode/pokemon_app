class PokeFacade
  class << self 
    def get_a_pokemon(pokemon)
      data = PokeService.call_for_a_pokemon(pokemon)
      Pokemon.new(data)
    end
  end
end