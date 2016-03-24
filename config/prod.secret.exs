use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elixir_phoenix_example, ElixirPhoenixExample.Endpoint,
  secret_key_base: "24Kz+2jYhl0ycxgSNepl5OBFQgXuYtF1EiCvoqytjSaPEU54N4Fmznwj6P6/iL8w"

# Configure your database
config :elixir_phoenix_example, ElixirPhoenixExample.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "elixir_phoenix_example_prod",
  pool_size: 20
