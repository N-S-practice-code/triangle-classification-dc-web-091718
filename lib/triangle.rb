class Triangle
  def initialize(s1,s2,s3)
    @sides=[s1,s2,s3].sort
  end
  
  def kind
    raise TriangleError if @sides[0] <= 0.0 or @sides[0]+@sides[1]<@sides[2]
    return :equilateral if @sides[0]==@sides[1] and @sides[1]==@sidesp[2]
    return :isosceles if @sides[0]==@sides[1] or @sides[1]==@sidesp[2]
    :scalene
  end
 
  class TriangleError < StandardError
    # triangle error code
  end
end