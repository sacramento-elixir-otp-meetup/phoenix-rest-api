# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixRestApi.Repo.insert!(%PhoenixRestApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhoenixRestApi.Beverages
alias Faker.Beer
# Generate some beer!
for _ <- 1..100 do
  Beverages.create_beer(%{
    name: Beer.name(),
    brand: Beer.brand(),
    alcohol: Beer.alcohol(),
    style: Beer.style()
  })
end
