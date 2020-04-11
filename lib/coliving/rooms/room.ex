defmodule Coliving.Rooms.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :name, :string
    # count of people / running machines etc.
    field :count, :integer
    field :limit, :integer

    timestamps()
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:name, :count, :limit])
    |> validate_required([:name, :count, :limit])
  end
end
