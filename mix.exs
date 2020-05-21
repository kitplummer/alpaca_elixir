defmodule AlpacaElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :alpaca_elixir,
      version: "0.1.0",
      elixir: "~> 1.10",
      preferred_cli_env: ["coveralls.html": :test],
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      description: "Alpaca Elixir Library",
      package: package(),
      deps: deps()
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
      {:bypass, "~> 1.0", only: :test},
      {:confex, "~> 3.4.0"},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:exvcr, "~> 0.11", only: :test},
      {:hackney, "~> 1.15.2"},
      {:jason, "~> 1.2"},
      {:tesla, "~> 1.3.0"},
      {:typed_struct, "~> 0.1.4"}
    ]
  end

  defp package do
    [
      maintainers: ["James Russo"],
      files: ["lib/**/*.ex", "mix*", "*.md"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jrusso1020/alpaca-elixir"}
    ]
  end
end
