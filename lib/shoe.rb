class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  
  def initialize(input)
    @brand = input
    if !BRANDS.include?(input)
      BRANDS << input
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(input)
    if !BRANDS.include?(input)
      BRANDS << input
    end
  end
end