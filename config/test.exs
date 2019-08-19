use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :pull_request_reviewer, PullRequestReviewerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :pull_request_reviewer, PullRequestReviewer.Repo,
  username: "postgres",
  password: "postgres",
  database: "pull_request_reviewer_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
