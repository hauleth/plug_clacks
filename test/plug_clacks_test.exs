defmodule PlugClacksTest do
  use ExUnit.Case, async: true
  use ExUnitProperties
  use Plug.Test

  alias PlugClacks, as: Subject

  doctest Subject

  test "response contains x-clacks-overheard header" do
    assert [] != get_clacks(call())
  end

  test "response contains `GNU Terry Pratchett` in clacks overheard" do
    assert "GNU Terry Pratchett" in get_clacks(call())
  end

  property "user can specify their own list of names" do
    check all names <- list_of(string(:alphanumeric, min_length: 1)) do
      clacks =
        call(names: names)
        |> get_clacks()


      for name <- names do
        assert "GNU #{name}" in clacks
      end
    end
  end

  defp call(options \\ []) do
    options = Subject.init(options)

    conn(:get, "/")
    |> Subject.call(options)
  end

  defp get_clacks(conn), do: get_resp_header(conn, "x-clacks-overheard")
end
