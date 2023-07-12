defmodule BankApi.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :password_hash
    field :email, :string
    field :cep, :string

    timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params) do
    user
    |> cast(params, [:name, :password_hash, :email, :cep])
    |> validate_required([:name, :password_hash, :email, :cep])
  end
end
