defmodule PhoenixRestApiWeb.BeerController do
  use PhoenixRestApiWeb, :controller

  alias PhoenixRestApi.Beverages
  alias PhoenixRestApi.Beverages.Beer

  action_fallback PhoenixRestApiWeb.FallbackController

  def index(conn, _params) do
    beers = Beverages.list_beers()
    render(conn, "index.json", beers: beers)
  end

  def create(conn, %{"beer" => beer_params}) do
    with {:ok, %Beer{} = beer} <- Beverages.create_beer(beer_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.beer_path(conn, :show, beer))
      |> render("show.json", beer: beer)
    end
  end

  def show(conn, %{"id" => id}) do
    beer = Beverages.get_beer!(id)
    render(conn, "show.json", beer: beer)
  end

  def update(conn, %{"id" => id, "beer" => beer_params}) do
    beer = Beverages.get_beer!(id)

    with {:ok, %Beer{} = beer} <- Beverages.update_beer(beer, beer_params) do
      render(conn, "show.json", beer: beer)
    end
  end

  def delete(conn, %{"id" => id}) do
    beer = Beverages.get_beer!(id)

    with {:ok, %Beer{}} <- Beverages.delete_beer(beer) do
      send_resp(conn, :no_content, "")
    end
  end
end
