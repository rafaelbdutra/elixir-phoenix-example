defmodule ElixirPhoenixExample.Contact do
  use Ecto.Model
  import Ecto.Query

  schema "contacts" do
    field :name
    field :phone
    field :inactive, :boolean, null: false, default: false

    timestamps
  end

  def active do
    from c in ElixirPhoenixExample.Contact,
    where: c.inactive == false
  end
end
