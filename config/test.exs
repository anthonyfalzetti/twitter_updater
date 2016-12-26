use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :twitter_updater, TwitterUpdater.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :twitter_updater, TwitterUpdater.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "twitter_updater_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
