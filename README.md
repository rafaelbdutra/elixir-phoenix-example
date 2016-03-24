### Useful Links
- https://robots.thoughtbot.com/testing-a-phoenix-elixir-json-api
- http://blog.drewolson.org/building-an-elixir-web-app/
- https://github.com/elixir-lang/ecto/blob/master/lib/ecto/repo.ex
- http://hexdocs.pm/ecto/Ecto.Repo.html#c:


# ElixirPhoenixExample

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
    2.1. mix ecto.migrate 20151123172601_create_contacts
    2.2. mix ecto.migrate 20151123210052_add_column_active_to_contacts
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Using

  - curl -v -X POST 'http://localhost:4000/api/contacts' -H 'Content-Type: application/json' -d '{"name": "Lalala", "phone": "(11) 98765 4321"}'
  - curl -v 'http://localhost:4000/api/contacts'
  - curl -v 'http://localhost:4000/api/contacts/1'


Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
