# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :channels_microtask_test,
  ecto_repos: [ChannelsMicrotaskTest.Repo]

# Configures the endpoint
config :channels_microtask_test, ChannelsMicrotaskTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rwEyYNacfuR2P9UaHzyI+hZ+EMIIUudbu2F5WOFFcT40fYoNTU0umusHXNEjC5Pl",
  render_errors: [view: ChannelsMicrotaskTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChannelsMicrotaskTest.PubSub,
  live_view: [signing_salt: "9lHCWI8r"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
