defmodule BankApiWeb.WelcomeController do
  use BankApiWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Bem vindo ao seu banco"})
  end
end
