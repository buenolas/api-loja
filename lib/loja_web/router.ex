defmodule LojaWeb.Router do
  use LojaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LojaWeb do
    pipe_through :api

    scope "/products" do
      get "/", ProductsController, :all
      get "/:id", ProductsController, :get
      post "/", ProductsController, :create
      put "/:id", ProductsController, :update
      delete "/:id", ProductsController, :delete
    end

  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:loja, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      live_dashboard "/dashboard", metrics: LojaWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
