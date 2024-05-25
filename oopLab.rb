class PointCart
    attr_accessor :x, :y
  
    def initialize(x, y)
      @x = x
      @y = y
    end
  
    def to_s
      "(#{@x}, #{@y})"
    end
  
    # Convert Cartesian point to Polar point
    def to_pol
      r = Math.sqrt(@x**2 + @y**2)
      theta = Math.atan2(@y, @x)
      PointPol.new(r, theta)   #if i don't write this part app isn't run, so i dont understand that's reason
    end
  end
  
  class PointPol
    attr_accessor :r, :theta
  
    def initialize(r, theta)
      @r = r
      @theta = theta
    end
  
    def to_s
      "(#{@r}, #{@theta})"
    end
  
    # Convert Polar point to Cartesian point
    def to_cart
      x = @r * Math.cos(@theta)
      y = @r * Math.sin(@theta)
      PointCart.new(x, y)  #if i don't write this part app isn't run, so i dont understand that's reason
    end
  end
  
  def main
    # Create a Cartesian point
    point_cart = PointCart.new(1, 1)
    puts "Cartesian Point: #{point_cart}"
  
    # Convert the Cartesian point to a Polar point
    point_pol = point_cart.to_pol
    puts "Converted to Polar Point: #{point_pol}"
  
    # Convert the Polar point back to a Cartesian point
    point_cart_converted_back = point_pol.to_cart
    puts "Converted back to Cartesian Point: #{point_cart_converted_back}"
  
    point_pol = PointPol.new(12, Math::PI / 6) # Example with radians  #if i write 30 (instead of math:: pi/6) result is changing and be a negative value i don't understand why that be?
    puts "Polar Point: #{point_pol}"
    point_cart = point_pol.to_cart
    puts "Converted to Cartesian Point: #{point_cart}"
  end
  
  main
  
