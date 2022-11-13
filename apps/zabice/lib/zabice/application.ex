defmodule Zabice.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Zabice.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Zabice.PubSub}
      # Start a worker by calling: Zabice.Worker.start_link(arg)
      # {Zabice.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Zabice.Supervisor)
  end
end
