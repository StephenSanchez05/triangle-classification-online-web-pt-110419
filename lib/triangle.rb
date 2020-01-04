class Triangle
  
  attr_accessor :lengthA, :lengthB, :lengthC,
  
  def initialize(lengthA, lengthB, lengthC)
    @lengthA = lengthA 
    @lengthB = lengthB
    @lengthC = lengthC
  end
  
  def kind
    answer
    if @lengthA == @lengthB && @lengthB == @lengthC
     :equilateral
    elsif @lengthB == @lengthA || @lengthB == @lengthC || @lengthA == @lengthC
    :isosceles
    else
    :scalene
    end
  end
  
  def answer
     if @lengthA != 0 && @lengthA + @lengthB > @lengthC && @lengthB + @lengthC > @lengthA && @lengthA + @lengthC > @lengthB
      true
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
