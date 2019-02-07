defmodule PhoenixRestApi.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_rest_api,
    adapter: Ecto.Adapters.Postgres
end
