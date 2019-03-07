defmodule PhoenixRestApi.Repo.Migrations.CreateBeers do
  use Ecto.Migration

  def change do
    create table(:beers) do
      add :name, :string
      add :brand, :string
      add :style, :string
      add :alcohol, :string

      timestamps()
    end
  end
end
