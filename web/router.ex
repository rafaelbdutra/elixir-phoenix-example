defmodule ElixirPhoenixExample.Router do
  use ElixirPhoenixExample.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", ElixirPhoenixExample do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", ElixirPhoenixExample do
    pipe_through :api

    resources "/contacts", ContactController
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirPhoenixExample do
  #   pipe_through :api
  # end
end
