defmodule BankApiWeb.WelcomeController do
  @moduledoc """
    Basic welcome json for connecting to the API
  """
  use BankApiWeb, :controller

  @doc """
    index/2
    Receives the connection and _any parameters.
    Puts :ok status and returns a json with a message
  """
  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Bem vindo ao seu banco"})
  end
end
