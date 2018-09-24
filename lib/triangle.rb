class Triangle
  def initialize(s1,s2,s3)
    @sides=[s1,s2,s3].sort
  end
  
  def kind
    raise TriangleError if @sides[0] <= 0.0
  end
 
  class TriangleError < StandardError
    # triangle error code
  end
end