defmodule BankApi.Users.Create do
  @moduledoc """
    Contains call/1 which takes parameters to create an user
    chageset and insert to DB
  """
  alias BankApi.Users.User
  alias BankApi.Repo

  @doc """
    call/1 receives parameters to create an user changeset and
    insert it to the data base
  """
  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
