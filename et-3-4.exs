# [[CH03-ET04]]
# Étude 3-4: Tuples as Parameters
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Add an +area/1+ function that takes a tuple of the form
# +{*shape*,*number*,*number*}+ as its parameter.
# The +area/1+ function will call the
# private +area/3+ function. Hint: use +defp+ for private functions.
#
# Here is some sample output. The last line tests to see that you cannot call the private function directly.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# [Geom]
# iex(2)> Geom.area({:rectangle, 7, 3})
# 21
# iex(3)> Geom.area({:triangle, 7, 3})
# 10.5
# iex(4)> Geom.area({:ellipse, 7, 3})
# 65.97344572538566
# iex(5)> Geom.area({:pentagon, 7, 3})
# 0
# iex(6)> Geom.area(:rectangle, 7, 3)
# ** (UndefinedFunctionError) undefined function: Geom.area/3
#     Geom.area(:rectangle, 7, 3)
#     erl_eval.erl:569: :erl_eval.do_apply/6
#     src/elixir.erl:133: :elixir.eval_forms/3
#     /bin/elixir/lib/iex/lib/iex/server.ex:19: IEx.Server.do_loop/1
# ----

defmodule Geom do

  def area({shape, num_1, num_2}) do
     area(shape, num_1, num_2)
  end

  defp area(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width
  end

  defp area(:triangle, length, width) when length >= 0 and width >= 0 do
    div((length*width), 2)
  end

  defp area(:ellipse, min_axis, max_axis) when min_axis >= 0 and max_axis >= 0 do
    :math.pi * min_axis * max_axis
  end

  defp area(_, _, _) do
    0
  end
end
IO.puts Geom.area({:rectangle, 7, 3})
# 21
IO.puts Geom.area({:triangle, 7, 3})
# 10.5
IO.puts Geom.area({:ellipse, 7, 3})
# 65.97344572538566
IO.puts Geom.area({:pentagon, 7, 3})
# 0

# IO.puts Geom.area(:rectangle, 3, 4)
# IO.puts Geom.area(:pentagon, 3, 4)
# IO.puts Geom.area(:ellipse, -1, 5)
# IO.puts Geom.area(:triangle, 5, -1)
