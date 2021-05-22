require 'rails_helper'

RSpec.describe "Pokemon endpoint" do 
  describe "can get pokemon attributes" do 
    it "can get details for a pokemon" do 

      query_params = {
        name: "mew"
      }

      get "/api/v1/pokemon", params: query_params

      expect(response).to be_successful
      expect(response.status). to eq(200)
      expect(response.content_type). to eq("application/json")
      mew = PocketMonster.last

      pokemon = JSON.parse(response.body, symbolize_names: true)

      expect(pokemon).to be_a Hash 
      expect(pokemon).to have_key(:data) 
      expect(pokemon[:data]).to be_a Hash
      expect(pokemon[:data]).to have_key(:attributes)
      expect(pokemon[:data][:attributes]).to be_a Hash

      poke_attributes = pokemon[:data][:attributes]
      expect(poke_attributes).to have_key(:name) 
      expect(poke_attributes[:name]).to be_a(String)
      expect(poke_attributes[:name]).to eq(mew.name)

      expect(poke_attributes).to have_key(:number) 
      expect(poke_attributes[:number]).to be_a(String)
      expect(poke_attributes[:number]).to eq(mew.number)

      expect(poke_attributes).to have_key(:image) 
      expect(poke_attributes[:image]).to be_a(String)
      expect(poke_attributes[:image]).to eq(mew.image)

      expect(poke_attributes).to have_key(:shiny) 
      expect(poke_attributes[:shiny]).to be_a(String)
      expect(poke_attributes[:shiny]).to eq(mew.shiny)
    end
  end
end