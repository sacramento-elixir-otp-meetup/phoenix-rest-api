defmodule PhoenixRestApi.Beverages.Beer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "beers" do
    field :alcohol, :string
    field :brand, :string
    field :name, :string
    field :style, :string

    timestamps()
  end

  @doc false
  def changeset(beer, attrs) do
    beer
    |> cast(attrs, [:name, :brand, :style, :alcohol])
    |> validate_required([:name, :brand, :style, :alcohol])
  end
end
