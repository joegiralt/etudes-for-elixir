# [[CH03-ET03]]
# Étude 3-3: Underscores
# ~~~~~~~~~~~~~~~~~~~~~~
# If you enter a shape that +area/3+ doesn't know about, or if you enter negative
# dimensions, Elixir will give you an error message. Use underscores to create a
# ``catch-all'' version, so that anything at all that doesn't match a valid
# rectangle, triangle, or ellipse will return zero. This goes against
# the Elixir philosophy of ``let it fail,'' but let's look the other way
# and learn about underscores anyway.
#
# Here is some sample output.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# [Geom]
# iex(2)> Geom.area(:rectangle, 3, 4)
# 12
# iex(3)> Geom.area(:pentagon, 3, 4)
# 0
# iex(4)> Geom.area(:ellipse, -1, 5)
# 0
# iex(5)> Geom.area(:triangle, 5, -1)
# 0
# ----

defmodule Geom do
  def area(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width
  end

  def area(:triangle, length, width) when length >= 0 and width >= 0 do
    div((length*width), 2)
  end

  def area(:ellipse, min_axis, max_axis) when min_axis >= 0 and max_axis >= 0 do
    :math.pi * min_axis * max_axis
  end

  def area(_, _, _) do
    0
  end

end

IO.puts Geom.area(:rectangle, 3, 4)
IO.puts Geom.area(:pentagon, 3, 4)
IO.puts Geom.area(:ellipse, -1, 5)
IO.puts Geom.area(:triangle, 5, -1)
