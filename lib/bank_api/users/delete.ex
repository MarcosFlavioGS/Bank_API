defmodule BankApi.Users.Delete do
  @moduledoc """
    Contains call/1 which gets an user from the DB
  """
  alias BankApi.Users.User
  alias BankApi.Repo

  @doc """
    call/1 Receives an user id from the controller.
  """
  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> Repo.delete(user)
    end
  end
 end
