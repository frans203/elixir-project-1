defmodule Projeto1.MixProject do
  use Mix.Project

  def project do
    [
      app: :projeto_1,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript_config()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison, "~>2.1"},
        { :poison, "~>5.0"}
    ]
  end

  defp escript_config do
    [main_module: Main]
  end
end
