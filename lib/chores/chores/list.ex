defmodule Chores.Chores.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chores" do
    field :created_at, :date
    field :due_date, :date
    field :name, :string
    field :priority, :integer

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:name, :priority, :due_date, :created_at])
    |> validate_required([:name, :priority, :due_date, :created_at])
  end
end
