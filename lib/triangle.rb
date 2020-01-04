class Triangle
  
  attr_accessor :A, :B, :C, :equilateral, :isosceles, :scalene
  
  def initialize(A, B, C)
    :A = A 
    :B = B
    :C = C
  end
  
  
end

class TriangleError < StandardError
