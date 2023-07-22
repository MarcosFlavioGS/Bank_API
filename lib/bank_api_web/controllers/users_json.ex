defmodule BankApiWeb.UsersJSON do
  @moduledoc """
    This module contains all view functions for CREATE SHOW UPDATE DELETE
  """
  alias BankApi.Users.User

  @doc """
    create/1
    Receives an user struct and returns the map containing a message and the user
    data
  """
  def create(%{user: user}) do
    %{
      message: "User created !",
      data: data(user)
    }
  end

  @doc """
    get/1
    Receives an User and puts a map with the user data
  """
  def get(%{user: user}) do
    %{
      data: data(user)
    }
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      cep: user.cep,
      email: user.email,
      name: user.name
    }
  end
end
