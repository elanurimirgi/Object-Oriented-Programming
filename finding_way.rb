class Point 
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end

  def Way(x1, y1)
    way_of_road = Math.sqrt((x1 - @x)**2 + (y1 - @y)**2)
  end
end

def main
  way = Point.new(3, 5)
  distance = way.Way(6, 8)
  puts "Distance of way: #{distance}"
end

main
