defmodule ParserSdk.MixProject do
  use Mix.Project

  def project do
    [
      app: :parser_sdk,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Default dependencies
  defp deps do
    [
      {:timex, "~> 3.3"},
      {:lib_wmbus, git: zisops_git_url("code/lib_wmbus"), ref: "0b4ede35ef933dcfe9a6b52185f348671a92e553"}, # Internal ZIS library available on ELEMENT.
      {:timeseries, git: zisops_git_url("code/timeseries")}, # Internal ZIS library available on ELEMENT.
    ]
  end

  def zisops_git_url(repo) do
    "git@git.zisops.com:#{repo}.git"
  end
end
