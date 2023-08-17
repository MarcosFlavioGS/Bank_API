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
    delete/2
    Receives a connection and an user Id.
  """
  def delete(conn, %{"id" => id}) do
    with {:ok, %User{} = user} <- Users.delete(id) do
      conn
      |> put_status(:ok)
      |> render(:delete, user: user)
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

  @doc"""
    update/2
    Receives a connection, user id and parameters to update as params.
  """
  def update(conn, params) do
    with {:ok, %User{} = user} <- Users.update(params) do
      conn
      |> put_status(:ok)
      |> render(:update, user: user)
    end
  end
end
