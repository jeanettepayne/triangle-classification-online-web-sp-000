class Triangle
  attr_reader :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind 
    if (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s1 + s3) <= s2 || s1 * s2 * s3 == 0
      begin 
       raise TriangleError
       puts error.message
      end 
      
    elsif s1 == s2 && s1 == s3
      self.kind == :equilateral
      
    elsif s1 == s2 || s2 == s3 || s1 ==s3
      self.kind == :isosceles
      
    else
      self.kind == :scalene
      
    end
  end
  
  
  class TriangleError < StandardError
    def message
    end
  end
  
end
