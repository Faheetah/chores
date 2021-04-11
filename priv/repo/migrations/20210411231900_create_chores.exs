defmodule Chores.Repo.Migrations.CreateChores do
  use Ecto.Migration

  def change do
    create table(:chores) do
      add :name, :string
      add :priority, :integer
      add :due_date, :date
      add :created_at, :date

      timestamps()
    end

  end
end
