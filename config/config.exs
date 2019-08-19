# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pull_request_reviewer,
  ecto_repos: [PullRequestReviewer.Repo]

# Configures the endpoint
config :pull_request_reviewer, PullRequestReviewerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5k1kac5iaVOr6VYpW8nniNx0SlP1oXMKnGiJ6fHFVoegD1VDwzu2dj8I/2uN4TtT",
  render_errors: [view: PullRequestReviewerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PullRequestReviewer.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
