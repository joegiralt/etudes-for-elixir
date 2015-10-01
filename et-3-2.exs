# [[CH03-ET02]]
# Étude 3-2: Guards
# ~~~~~~~~~~~~~~~~~
# Even though you won't get an error message when calculating the area of a shape
# that has negative dimensions, it's still worth guarding your +area/3+ function.
# You will want two guards for each pattern to make sure that both dimensions
# are greater than or equal to zero. Since *both* have to be non-negative, use
# +and+ to separate your guards.
#
# Here is some sample output.
#
# // [source,iex]
# ----
# iex(1)> c("geom.ex")
# /Users/elixir/code/ch03-02/geom.ex:1: redefining module Geom
# [Geom]
# iex(2)> Geom.area(:rectangle, -3, 4)
# ** (FunctionClauseError) no function clause matching: Geom.area(:rectangle, -3, 4)
#     /Users/elixir/code/ch03-02/geom.ex:21: Geom.area(:rectangle, -3, 4)
#     erl_eval.erl:569: :erl_eval.do_apply/6
#     src/elixir.erl:133: :elixir.eval_forms/3
#     /bin/elixir/lib/iex/lib/iex/server.ex:19: IEx.Server.do_loop/1
#
# iex(2)> Geom.area(:triangle, 3, -4)
# ** (FunctionClauseError) no function clause matching: Geom.area(:triangle, 3, -4)
#     /Users/elixir/code/ch03-02/geom.ex:21: Geom.area(:triangle, 3, -4)
#     erl_eval.erl:569: :erl_eval.do_apply/6
#     src/elixir.erl:133: :elixir.eval_forms/3
#     /bin/elixir/lib/iex/lib/iex/server.ex:19: IEx.Server.do_loop/1
#
# iex(2)> Geom.area(:ellipse, -3, -4)
# ** (FunctionClauseError) no function clause matching: Geom.area(:ellipse, -3, -4)
#     /Users/elixir/code/ch03-02/geom.ex:21: Geom.area(:ellipse, -3, -4)
#     erl_eval.erl:569: :erl_eval.do_apply/6
#     src/elixir.erl:133: :elixir.eval_forms/3
#     /bin/elixir/lib/iex/lib/iex/server.ex:19: IEx.Server.do_loop/1
# iex(2)> Geom.area(:rectangle, 3, 4)
# 12
# iex(3)> Geom.area(:triangle, 3, 4)
# 6.0
# iex(4)> Geom.area(:ellipse, 3, 4)
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
end

IO.puts Geom.area(:rectangle, -3, 4)
IO.puts Geom.area(:triangle, 3, -4)
IO.puts Geom.area(:ellipse, -3, -4)
