# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chores,
  ecto_repos: [Chores.Repo]

# Configures the endpoint
config :chores, ChoresWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xav2KPTTJFGL/Z/jIYTtW275CYlOhrInBjAlj94Nf+SBszWVCJCS4uf4U5KCKOaN",
  render_errors: [view: ChoresWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Chores.PubSub,
  live_view: [signing_salt: "ul+khbVg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
