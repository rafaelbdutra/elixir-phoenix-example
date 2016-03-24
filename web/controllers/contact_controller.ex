defmodule ElixirPhoenixExample.ContactController do
  use ElixirPhoenixExample.Web, :controller
  alias ElixirPhoenixExample.Contact

  def index(conn, _params) do
    contacts = Contact.active
    |> Repo.all

    render conn, contacts: contacts
  end

  def show(conn, %{"id" => id}) do
    contact = Repo.get(Contact, id)

    render conn, "contact.json", contact: contact
  end

  def create(conn, _params) do
    new_contact = %Contact{name: _params["name"], phone: _params["phone"]}
      |> Repo.insert!

    render conn, "contact.json", contact: new_contact
  end
end
