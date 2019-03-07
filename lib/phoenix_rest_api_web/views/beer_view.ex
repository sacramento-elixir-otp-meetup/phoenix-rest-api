defmodule PhoenixRestApiWeb.BeerView do
  use PhoenixRestApiWeb, :view
  alias PhoenixRestApiWeb.BeerView

  def render("index.json", %{beers: beers}) do
    %{data: render_many(beers, BeerView, "beer.json")}
  end

  def render("show.json", %{beer: beer}) do
    %{data: render_one(beer, BeerView, "beer.json")}
  end

  def render("beer.json", %{beer: beer}) do
    %{id: beer.id,
      name: beer.name,
      brand: beer.brand,
      style: beer.style,
      alcohol: beer.alcohol}
  end
end
