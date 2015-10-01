# [[CH04-ET02]]
# etude 4-2: Recursion
# ~~~~~~~~~~~~~~~~~~~~
# This is a typical exercise for recursion: finding the greatest common
# divisor (GCD) of two integers. Instead of giving Euclid's method, we'll
# do this with a method devised by Edsger W. Dijkstra. The neat part about
# Dijkstra's method is that you don't need to do any division to find
# the result.  Here is the method.
#
# To find the GCD of integers M and N:
#
# * If M and N are equal, the result is M.
# * If M is greater than N, the result is the GCD of M - N and N
# * Otherwise M must be less than N, and the result is the GCD of M and N - M.
#
# Write a function +gcd/2+ in a module named +Dijkstra+ that implements
# the algorithm. This program is an ideal place to use Elixir's +cond+ construct.
# Here is some sample output.
#
# // [source,iex]
# ----
# iex(1)> c("dijkstra.ex")
# [Dijkstra]
# iex(2)> Dijkstra.gcd(2, 8)
# 2
# iex(3)> Dijkstra.gcd(14, 21)
# 7
# iex(4)> Dijkstra.gcd(125, 46)
# 1
# iex(5)> Dijkstra.gcd(120, 36)
# 12
# ----

defmodule Dijkstra do
  def gcd(m, n) do
    cond do
      m == n -> m
      m > n -> gcd(m - n, n)
      true -> gcd(m, n - m)
    end
  end
end
