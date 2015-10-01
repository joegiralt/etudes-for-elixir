# [[CH03-ET01]]
# Étude 3-1: Pattern Matching
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Use atoms and pattern matching to make your +area+ function calculate the
# area of a rectangle, triangle, or ellipse.  If your parameters are
# +shape+, +a+ and +b+, the area for the atom +:rectangle+ is +a * b+,
# where +a+ and +b+ represent the length and width. For a +:triangle+ atom,
# the area is +a * b / 2.0+, with +a+ and +b+ representing
# the base and height of the triangle. For an +:ellipse+ atom, the area is
# +:math.pi() * a * b+, where +a+ and +b+ represent the major and minor radiuses.
#
# Here is some sample output.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# [Geom]
# iex(2)> Geom.area(:rectangle, 3, 4)
# 12
# iex(3)> Geom.area(:triangle, 3, 5)
# 7.5
# iex(4)> Geom.area(:ellipse, 2, 4)
# 25.132741228718345

defmodule Geom do
  def area(:rectangle, length, width) do
    length * width
  end

  def area(:triangle, length, width) do
    div((length*width), 2)
  end

  def area(:ellipse, min_axis, max_axis) do
    :math.pi * min_axis * max_axis
  end
end

IO.puts Geom.area(:rectangle, 3, 4)
IO.puts Geom.area(:triangle, 3, 5)
IO.puts Geom.area(:ellipse, 2, 4)
