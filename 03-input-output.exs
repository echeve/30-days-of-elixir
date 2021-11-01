# https://hexdocs.pm/elixir/IO.html
# https://hexdocs.pm/elixir/File.html
# http://elixir-lang.org/getting-started/module-attributes.html

defmodule Ejercicio4 do
  @moduledoc """
  Ejercicio sobre el uso de la librería IO y sobre la lectura de ficheros
  """

  defp get_Nombre do
    IO.gets("¿Cuál es tu nombre?")
    |> String.trim()
  end

  defp get_Pregunta_Vacas do
    IO.getn("¿Te gustan las vacas? [s|n]", 1)
    |> String.downcase()
  end

  defp leer_Dibujo_Vaca do
    path = Path.expand("support/cow.txt", __DIR__)
    case File.read(path) do
      {:ok, art} -> art
      {:error, _} -> IO.puts("No se puede encontrar el fihcero cow.txt;", System.halt(:abort))
    end
  end

  @doc """
  Función encargada de leer desde la entrada standard y montar la respuesta
  """
  def main do
      nombre = get_Nombre()
      mostrarVaca = get_Pregunta_Vacas()
      case mostrarVaca do
        "s" -> IO.puts("¡Genial! aqui tienes una vaca, #{nombre}")
               IO.puts(leer_Dibujo_Vaca())
        "n" -> IO.puts("Una pena #{nombre}, no se muestra el dibujo.")
      end
  end
end

Ejercicio4.main()
