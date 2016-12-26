# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :twitter_updater,
  ecto_repos: [TwitterUpdater.Repo]

# Configures the endpoint
config :twitter_updater, TwitterUpdater.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zXC3iAxETWIKApt1YGMRBgw7LkoWT8Q48b6EeEJSJGF+H5GiYkDxWuGzOGMHjxRe",
  render_errors: [view: TwitterUpdater.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TwitterUpdater.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
