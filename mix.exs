defmodule PlugClacks.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_clacks,
      description: "Remember of the fallen",
      version: "1.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        licenses: ["MIT-no-bad-people"],
        links: %{
          "GitHub" => "https://github.com/hauleth/plug_clacks"
        }
      ]
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:plug, "~> 1.0"},

      {:ex_doc, ">= 0.0.0", only: [:dev]},
      {:stream_data, "~> 0.3", only: [:test]}
    ]
  end
end
