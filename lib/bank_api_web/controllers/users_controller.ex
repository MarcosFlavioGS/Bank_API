defmodule BankApiWeb.UsersController do
  use BankApiWeb, :controller
  alias BankApi.Users.Create
  alias BankApi.Users.User

  action_fallback BankApiWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
    end
  end
end
