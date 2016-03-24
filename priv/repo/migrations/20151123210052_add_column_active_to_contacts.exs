defmodule ElixirPhoenixExample.Repo.Migrations.AddColumnActiveToContacts do
  use Ecto.Migration

  def change do
    alter table(:contacts) do
      add :inactive, :boolean, null: false, default: false
    end
  end
end
