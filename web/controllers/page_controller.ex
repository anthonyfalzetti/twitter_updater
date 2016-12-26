defmodule TwitterUpdater.PageController do
  use TwitterUpdater.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
