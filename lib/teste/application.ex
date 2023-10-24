defmodule Teste.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Teste.Worker.start_link(arg)
      # {Teste.Worker, arg}
    ]

    :error_logger.add_report_handler(ErrorHandler)

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Teste.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
