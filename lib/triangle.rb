class Triangle
  
  attr_accessor :lengthA, :lengthB, :lengthC, :equilateral, :isosceles, :scalene
  
  def initialize(lengthA, lengthB, lengthC)
    @lengthA = lengthA 
    @lengthB = lengthB
    @lengthC = lengthC
  end
  
  def kind
    answer
    if @lengthA == @lengthB && @lengthB == @lengthC
      puts @equilateral
    elsif @lengthB == @lengthA || @lengthB == @lengthC || @lengthA == @lengthC
    puts @isosceles
    else
    puts @scalene
    end
  end
  
  def answer
     if @lengthA != 0 && @lengthA + @lengthB > @lengthC && @lengthB + @lengthC > @lengthA && @lengthA + @lengthC > @lengthB
      answer
    else
      begin
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "The sides you submit must equal a triangle"
  end
end
end
