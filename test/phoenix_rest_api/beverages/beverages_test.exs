defmodule PhoenixRestApi.BeveragesTest do
  use PhoenixRestApi.DataCase

  alias PhoenixRestApi.Beverages

  describe "beers" do
    alias PhoenixRestApi.Beverages.Beer

    @valid_attrs %{
      alcohol: "some alcohol",
      brand: "some brand",
      name: "some name",
      style: "some style"
    }
    @update_attrs %{
      alcohol: "some updated alcohol",
      brand: "some updated brand",
      name: "some updated name",
      style: "some updated style"
    }
    @invalid_attrs %{alcohol: nil, brand: nil, name: nil, style: nil}

    def beer_fixture(attrs \\ %{}) do
      {:ok, beer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Beverages.create_beer()

      beer
    end

    test "list_beers/0 returns all beers" do
      beer = beer_fixture()
      assert Beverages.list_beers() == [beer]
    end

    test "get_beer!/1 returns the beer with given id" do
      beer = beer_fixture()
      assert Beverages.get_beer!(beer.id) == beer
    end

    test "create_beer/1 with valid data creates a beer" do
      assert {:ok, %Beer{} = beer} = Beverages.create_beer(@valid_attrs)
      assert beer.alcohol == "some alcohol"
      assert beer.brand == "some brand"
      assert beer.name == "some name"
      assert beer.style == "some style"
    end

    test "create_beer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Beverages.create_beer(@invalid_attrs)
    end

    test "update_beer/2 with valid data updates the beer" do
      beer = beer_fixture()
      assert {:ok, %Beer{} = beer} = Beverages.update_beer(beer, @update_attrs)
      assert beer.alcohol == "some updated alcohol"
      assert beer.brand == "some updated brand"
      assert beer.name == "some updated name"
      assert beer.style == "some updated style"
    end

    test "update_beer/2 with invalid data returns error changeset" do
      beer = beer_fixture()
      assert {:error, %Ecto.Changeset{}} = Beverages.update_beer(beer, @invalid_attrs)
      assert beer == Beverages.get_beer!(beer.id)
    end

    test "delete_beer/1 deletes the beer" do
      beer = beer_fixture()
      assert {:ok, %Beer{}} = Beverages.delete_beer(beer)
      assert_raise Ecto.NoResultsError, fn -> Beverages.get_beer!(beer.id) end
    end

    test "change_beer/1 returns a beer changeset" do
      beer = beer_fixture()
      assert %Ecto.Changeset{} = Beverages.change_beer(beer)
    end
  end
end
