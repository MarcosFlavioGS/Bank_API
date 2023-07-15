defmodule BankApi.Users do
  alias BankApi.Users.Create

  defdelegate create(params), to: Create, as: :call
end
