defmodule BankApiWeb.UsersJSON do
  @moduledoc """
    This module contains all view functions for CREATE SHOW UPDATE DELETE
  """

  @doc """
    create/1
    Receives an user struct and returns the map containing a message, the user and the user id.
    data
  """
  def create(%{user: user}) do
    %{
      message: "User created !",
      id: user.id,
      data: user
    }
  end

  @doc """
    delete/1
    Receives an user struct and returns the deleted user.
  """
  def delete(%{user: user}) do
    %{
      message: "User deleted !",
      data: user
    }
  end

  @doc """
    get/1
    Receives an User and puts a map with the user data
  """
  def get(%{user: user}) do
    %{
      data: user
    }
  end

  @doc """
    update/1
    Receives an User and puts a map with the updated user data.
  """
  def update(%{user: user}) do
    %{
      message: "User updated !",
      data: user
    }
  end
end
