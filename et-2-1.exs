# [[CH02-ET01]]
# Étude 2-1: Writing a Function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Write a module with a function that takes the length and width of a
# rectangle and returns (yields) its area.  Name the module +Geom+, and
# name the function +area+. Save the module in a file named +geom.ex+.
# The function has arity 2, because it needs
# two pieces of information to make the calculation. In Elixir-speak:
# write function +area/2+.
#
# Here is some sample output.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# [Geom]
# iex(2)> Geom.area(3,4)
# 12
# iex(3)> Geom.area(12, 7)
# 84

defmodule Geo do
  def area(length, width) do
    length * width
  end
end

IO.puts Geo.area(3,4)
IO.puts Geo.area(12,7)
