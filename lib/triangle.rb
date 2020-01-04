class Triangle
  
  attr_accessor :A, :B, :C, :equilateral, :isosceles, :scalene
  
  def initialize(A, B, C)
    :A = A 
    :B = B
    :C = C
  end
  

class TriangleError < StandardError
  def message
    "The sides you submit must equal a triangle"
  end
end
