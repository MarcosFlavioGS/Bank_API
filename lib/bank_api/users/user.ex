defmodule BankApi.Users.User do
  @moduledoc """
    Contains definition for the User schema and creates a changeset
  """
  use Ecto.Schema
  import Ecto.Changeset

  @required_params_create [:name, :password, :email, :cep]
  @required_params_update [:name, :email, :cep]

  @derive {Jason.Encoder, only: [:name, :email, :cep]}
  schema "users" do
    field :name, :string
    field :password, :string, virtual: true
    field :password_hash
    field :email, :string
    field :cep, :string

    timestamps()
  end

  @doc """
    changeset/1
    Receives an parameters to validate.
    Performs param cast, params validation, adds password hash and returns a new user changeset.
  """
  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params_create)
    |> validate_required(@required_params_create)
    |> validate_length(:name, min: 3)
    |> validate_length(:password, min: 6)
    |> validate_length(:cep, min: 8)
    |> validate_format(:email, ~r/@/)
    |> add_password_hash()
  end

  @doc """
    changeset/2
    Receives an User struct and parameters to validate and update.
    Performs param cast, params validation, adds password hash and returns a changeset with updated user.
  """
  def changeset(user, params) do
    user
    |> cast(params, @required_params_create)
    |> validate_required(@required_params_update)
    |> validate_length(:name, min: 3)
    |> validate_length(:password, min: 6)
    |> validate_length(:cep, min: 8)
    |> validate_format(:email, ~r/@/)
    |> add_password_hash()
  end

  defp add_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    change(changeset, Argon2.add_hash(password))
  end

  defp add_password_hash(changeset), do: changeset
end
