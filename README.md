# PhoenixRestApi

## Generate Beer resource

```sh
 $ mix phx.gen.json Beverages Beer beers name:string brand:string style:string alcohol:string

* creating lib/phoenix_rest_api_web/controllers/beer_controller.ex
* creating lib/phoenix_rest_api_web/views/beer_view.ex
* creating test/phoenix_rest_api_web/controllers/beer_controller_test.exs
* creating lib/phoenix_rest_api_web/views/changeset_view.ex
* creating lib/phoenix_rest_api_web/controllers/fallback_controller.ex
* creating lib/phoenix_rest_api/beverages/beer.ex
* creating priv/repo/migrations/20190306161930_create_beers.exs
* creating lib/phoenix_rest_api/beverages/beverages.ex
* injecting lib/phoenix_rest_api/beverages/beverages.ex
* creating test/phoenix_rest_api/beverages/beverages_test.exs
* injecting test/phoenix_rest_api/beverages/beverages_test.exs

Add the resource to your :api scope in lib/phoenix_rest_api_web/router.ex:

    resources "/beers", BeerController, except: [:new, :edit]


Remember to update your repository by running migrations:

    $ mix ecto.migrate

```

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
