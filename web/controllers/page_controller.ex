defmodule ElixirPhoenixExample.PageController do
  use ElixirPhoenixExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
