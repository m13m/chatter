ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Chatter.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)
{:ok, _} = Application.ensure_all_started(:ex_machina)

Application.put_env(:wallaby, :base_url, ChatterWeb.Endpoint.url())
