use Mix.Config

config :ex_mon_api,
  ecto_repos: [ExMonApi.Repo]

# Configures the endpoint
config :ex_mon_api, ExMonApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IasOmPEWBfI0J8zTBel4bDFQyOq6o9RQZETuzcrN5LYUMSIqq1aiAK9h+/Tnmioh",
  render_errors: [view: ExMonApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ExMonApi.PubSub,
  live_view: [signing_salt: "Ph/3FsN2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
