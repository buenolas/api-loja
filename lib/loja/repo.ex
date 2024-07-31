defmodule Loja.Repo do
  use Ecto.Repo,
    otp_app: :loja,
    adapter: Ecto.Adapters.Postgres
end
