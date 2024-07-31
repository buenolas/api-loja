defmodule Loja.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LojaWeb.Telemetry,
      Loja.Repo,
      {DNSCluster, query: Application.get_env(:loja, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Loja.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Loja.Finch},
      # Start a worker by calling: Loja.Worker.start_link(arg)
      # {Loja.Worker, arg},
      # Start to serve requests, typically the last entry
      LojaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Loja.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LojaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
