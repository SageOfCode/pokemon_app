class PokemonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :number, :image, :shiny
end
