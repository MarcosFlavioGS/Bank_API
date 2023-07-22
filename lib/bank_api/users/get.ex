defmodule BankApi.Users.Get do
  @moduledoc """
    Contains call/1 which gets an user from the DB
  """
  alias BankApi.Users.User
  alias BankApi.Repo

  @doc """
    call/1 Receives an user id and returns the user
    returns nill if non user is found
  """
  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> {:ok, user}
    end
  end
end
