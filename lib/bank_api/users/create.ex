defmodule BankApi.Users.Create do
  alias BankApi.Users.User
  alias BankApi.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
