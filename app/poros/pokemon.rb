class Pokemon
  attr_reader :name,
              :number,
              :image

  def initialize(data)
    @name = data[:name].capitalize
    @number = data[:id]
    @image = data[:sprites][:front_default]
  end
end