class Triangle
  
  attr_accessor :lengthA, :lengthB, :lengthC, :equilateral, :isosceles, :scalene
  
  def initialize(lenghtA, lengthB, lengthC)
    @lengthA = lengthA 
    @lengthB = lengthB
    @lengthC = lengthC
  end
  
  def kind
    if @lengthA + @lengthB >= @lengthC && @lengthB + @lengthC >= @lengthA && @lengthA + @lengthC >= @lengthB
      type
    else
      begin
      raise TriangleError
      rescue TriangleError => error
      puts error.message
    end
  end
  
  def type
    if @lengthA = @lengthB && @lengthB = @lengthC
      puts @equilateral
    elsif @lengthB = @lengthA || @lengthB = @lengthC || @lengthA = @lengthC
    puts @isosceles
    else
    puts @scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "The sides you submit must equal a triangle"
  end
end
end
