require 'rails_helper'

RSpec.describe "as a visitor" do
  describe "when I search for a pokemon" do
    it 'I see results' do
      visit root_path

      fill_in :pokemon, with: "Pikachu"

      click_button "Search"

      expect(current_path).to eq(pokemon_index_path)

      expect(page).to have_content("Pikachu") 
      expect(page).to have_content("Number: 25") 
    end
  end
end
