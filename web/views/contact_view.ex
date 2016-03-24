defmodule ElixirPhoenixExample.ContactView do
  use ElixirPhoenixExample.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, ElixirPhoenixExample.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, ElixirPhoenixExample.ContactView, "contact.json")}
  end

  def render("contact.json", %{contact: contact}) do
    %{
      id: contact.id,
      name: contact.name,
      phone: contact.phone,
      active: !contact.inactive
    }
  end
end
