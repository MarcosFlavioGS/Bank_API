defmodule BankApi.Users.Get do
  alias BankApi.Users.User
  alias BankApi.Repo

  def call(id) do
    case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> {:ok, user}
    end
  end
end
