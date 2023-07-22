defmodule BankApiWeb.UsersController do
  @moduledoc """
    Contains all user controllers for the CREATE SHOW UPDATE DELETE
  """
  use BankApiWeb, :controller
  alias BankApi.Users
  alias Users.User

  action_fallback BankApiWeb.FallbackController

  @doc """
    create/2 receives the connection and the map to create an user
  """
  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
    end
  end

  @doc """
    show/2
    Receives the connection and an user id
  """
  def show(conn, %{"id" => id}) do
    with {:ok, %User{} = user} <- Users.get(id) do
      conn
      |> put_status(:ok)
      |> render(:get, user: user)
    end
  end
end
