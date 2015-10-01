# [[CH02-ET02]]
# Étude 2-2: Writing a Function with Default Values
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Modify the function you wrote in <<CH02-ET01, Étude 2-2>> so that
# the default variables for the length and width are +1+. Here is some
# sample output.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# [Geom]
# iex(2)> Geom.area(7, 5)
# 35
# iex(3)> Geom.area(7)
# 7
# iex(4)> Geom.area()
# 1
# ----

defmodule Geom do
  def area(length \\ 1, width \\ 1) do
    length * width
  end
end

IO.puts  Geom.area(7, 5)
IO.puts  Geom.area(7)
IO.puts  Geom.area()
