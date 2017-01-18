defmodule TwitterUpdater.Quote do
  use TwitterUpdater.Web, :model

  schema "quotes" do
    field :status, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:status])
    |> validate_required([:status])
    |> validate_length(:status, max: 255)
  end
end
