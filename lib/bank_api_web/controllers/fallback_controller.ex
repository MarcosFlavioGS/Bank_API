defmodule BankApiWeb.FallbackController do
  use BankApiWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: BankApiWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
