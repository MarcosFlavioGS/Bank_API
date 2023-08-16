defmodule BankApi.Users.Update do
  @moduledoc """
    Contains call/1 which gets an user from the DB
  """
  alias BankApi.Users.User
  alias BankApi.Repo

  @doc """
    call/1 Receives an user id and
  """
  def call(%{"id" => id} = params) do
    case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> update(user, params)
    end
  end

  defp update(user, params) do
	user
	|> User.changeset(params)
	|> Repo.update()
  end
 end
