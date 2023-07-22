defmodule BankApi.Users do
  @moduledoc """
    Module responsable for facades to functions
  """
  alias BankApi.Users.Create
  alias BankApi.Users.Get

  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
end
