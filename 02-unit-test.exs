# http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html
# https://hexdocs.pm/ex_unit/ExUnit.html

ExUnit.start()

defmodule Ejercicio2 do
  use ExUnit.Case, async: true

  test "test simple que pasa" do
    assert true
  end

  test "test simple que falla" do
    assert false
  end

  test "suma 1 mas 1" do
    assert 1+1 == 2
  end

  test "función que genera una excepción" do
    assert_raise ArithmeticError, fn  -> 1 + "hola" end
  end
end
