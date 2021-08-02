defmodule Sport.Repo do
  use Ecto.Repo,
    otp_app: :sport,
    adapter: Ecto.Adapters.Postgres
end
