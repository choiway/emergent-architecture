# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :emergent_architecture,
  ecto_repos: [EmergentArchitecture.Repo]

# Configures the endpoint
config :emergent_architecture, EmergentArchitectureWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MnIeAqMsvfpnWvr4kl+zvhYw5ueroClOfkDF6AdJ9pYF81ab5E/e1Hrlkv6pSwRp",
  render_errors: [view: EmergentArchitectureWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EmergentArchitecture.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
