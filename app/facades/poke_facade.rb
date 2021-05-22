class PokeFacade
  class << self 
    def get_a_pokemon(pokemon)
      data = PokeService.call_for_a_pokemon(pokemon)
      poke = Pokemon.new(data)
      PocketMonster.find_pokemon(poke)
    end
  end
end