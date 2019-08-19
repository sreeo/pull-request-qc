defmodule PullRequestReviewer.Repo do
  use Ecto.Repo,
    otp_app: :pull_request_reviewer,
    adapter: Ecto.Adapters.Postgres
end
