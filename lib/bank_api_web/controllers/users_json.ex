defmodule BankApiWeb.UsersJSON do
  @moduledoc """
    This module contains all view functions for CREATE SHOW UPDATE DELETE
  """

  @doc """
    create/1
    Receives an user struct and returns the map containing a message and the user
    data
  """
  def create(%{user: user}) do
    %{
      message: "User created !",
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
end
