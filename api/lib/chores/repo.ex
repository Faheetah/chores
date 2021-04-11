defmodule Chores.Repo do
  use Ecto.Repo,
    otp_app: :chores,
    adapter: Ecto.Adapters.Postgres
end
