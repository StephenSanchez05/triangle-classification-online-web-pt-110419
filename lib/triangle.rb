class Triangle
  
  attr_accessor :A, :B, :C, :equilateral, :isosceles, :scalene
  
  def initialize(lenghtA, lengthB, lengthC)
    :A = lengthA 
    :B = lengthB
    :C = lengthC
  end
  
  def kind
    if :A + :B > :C && :B + :C > :A && :A + :C > :B
      type
    else
      begin
      raise TriangleError
      rescue TriangleError => error
      puts error.message
    end
  end
  
  def type
    if :A = :B && :B = :C
      puts :equilateral
    elsif :B = :A || :B = :C || :A = :C
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
