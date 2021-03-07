defmodule ExMonApiWeb.Router do
  use ExMonApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExMonApiWeb do
    pipe_through :api
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ExMonApiWeb.Telemetry
    end
  end

  scope "/", ExMonApiWeb do
    pipe_through :api

    get "/", WelcomeController, :index
  end
end
