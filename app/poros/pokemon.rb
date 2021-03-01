class Pokemon
  attr_reader :name,
              :number,
              :image,
              :shiny

  def initialize(data)
    @name = data[:name].capitalize
    @number = data[:id]
    @image = data[:sprites][:front_default]
    @shiny = data[:sprites][:front_shiny]
  end
end