defmodule DatingApp.Accounts.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "profiles" do
    field :bio, :string
    field :interests, :string
    #field :user_id, :id

    # Se define la relación en los Schemas, entre user y profile
    belongs_to :user, DatingApp.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:bio, :interests])
    |> validate_required([:bio, :interests])
  end
end
