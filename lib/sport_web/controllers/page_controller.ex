defmodule SportWeb.PageController do
  use SportWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
