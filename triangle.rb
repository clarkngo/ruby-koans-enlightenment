# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  
=begin my solution for zero, negative and 
        sum of any two sides must be more than third side
  # check if triangle
  if a > c
    temp = c
    c = a
    a = temp
  end
  if b > c 
    temp = c
    c = b
    b = temp
  end 

  # if zero or negative length
  if a <= 0 || b <= 0 || c <= 0 || a + b <= c
    raise TriangleError
  end
=end


  s = (a + b + c) / 2.0
  
  # the following must be positive to be a valid triangle
  ok = (s - a) * (s - b) * (s - c)
  
  if a <= 0 || b <= 0 || c <= 0 || ok <= 0 then 
    raise TriangleError
  end

  # type of triangles
  if a == b && b == c 
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
