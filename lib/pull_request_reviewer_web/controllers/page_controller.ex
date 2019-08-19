defmodule PullRequestReviewerWeb.PageController do
  use PullRequestReviewerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
