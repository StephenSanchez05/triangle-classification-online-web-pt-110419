class Triangle
  
  attr_accessor :lengthA, :B, :C, :equilateral, :isosceles, :scalene
  
  def initialize(lenghtA, lengthB, lengthC)
    :lengthA = lengthA 
    :B = lengthB
    :C = lengthC
  end
  
  def kind
    if :lengthA + :B > :C && :B + :C > :lengthA && :lengthA + :C > :B
      type
    else
      begin
      raise TriangleError
      rescue TriangleError => error
      puts error.message
    end
  end
  
  def type
    if :lengthA = :B && :B = :C
      puts :equilateral
    elsif :B = :lengthA || :B = :C || :lengthA = :C
    puts :isosceles
  else
    puts :scalene
  end
end 

class TriangleError < StandardError
  def message
    "The sides you submit must equal a triangle"
  end
end
