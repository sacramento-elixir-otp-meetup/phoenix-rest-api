# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_rest_api,
  ecto_repos: [PhoenixRestApi.Repo]

# Configures the endpoint
config :phoenix_rest_api, PhoenixRestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2Y9c9/YSV88qA+cvBqX2e/elypOpvPF4Hc3v31u3JyjhD6SaeyWGD7TpBk5CCjow",
  render_errors: [view: PhoenixRestApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixRestApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
