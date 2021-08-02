# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sport,
  ecto_repos: [Sport.Repo]

# Configures the endpoint
config :sport, SportWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EnFehDhfJ81P8Acty2AGSHsHG4df075hzTfVA6HmGCAw1hdcb5fKLvLcAMDuoCKP",
  render_errors: [view: SportWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Sport.PubSub,
  live_view: [signing_salt: "yzFS4aaJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
