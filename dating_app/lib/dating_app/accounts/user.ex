defmodule DatingApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :age, :integer
    field :email, :string
    field :name, :string

    # Se define la relación en los Schemas, entre user y profile
    has_one :profile, DatingApp.Accounts.Profile

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> Ecto.Changeset.cast(attrs, [:name, :email, :age])
    |> Ecto.Changeset.validate_required([:name, :email])
    |> Ecto.Changeset.validate_format(:email, ~r/@/)
    |> Ecto.Changeset.validate_number(:age, greater_than: 17)
  end
end
