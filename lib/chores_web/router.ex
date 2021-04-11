defmodule ChoresWeb.Router do
  use ChoresWeb, :router

  # Root api pipeline + routing
  pipeline :api do
    plug :accepts, ["json"]
  end

  # Primary scope for chore retrieval, modification, etc
  scope "/api/chores", ChoresWeb do
    pipe_through :api
    get "/list", ChoresList, :index
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ChoresWeb.Telemetry
    end
  end
end
